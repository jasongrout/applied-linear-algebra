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
	git commit -a -m "Update book"
	git push origin gh-pages
	git checkout $(BRANCH)
	git stash pop
clean:
	rm -rf output