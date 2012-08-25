BRANCH=$(shell git symbolic-ref --short -q HEAD)

all: book

book: title.md classplans.md lecture1.md lecture2.md book.css header.html
	mkdir -p output
	pandoc -s  title.md classplans.md lecture*.md  -H header.html -t html --toc -c book.css --mathjax > output/index.html
	cp -a book.css output/

update: output/index.html
	@echo $(BRANCH)
	git stash
	git checkout gh-pages
	cp -r output/* .
	# The - at the beginning tells Make to ignore an error exit status
	# The line continuations make sure commit and push only happen if there are changes.
	- git diff-index --quiet HEAD -- && \
	git commit -a -m "Update book" && \
	git push origin gh-pages
	git checkout $(BRANCH)
	git stash pop
clean:
	rm -rf output