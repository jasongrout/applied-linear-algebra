BRANCH=$(shell git symbolic-ref --short -q HEAD)
DIRTY=$(shell git diff-index --quiet HEAD -- ; echo $$?)
ifneq "$(DIRTY)" "0"
    STASHSAVE=git stash 
    STASHPOP=git stash pop 
else
    STASHSAVE=
    STASHPOP=
endif

all: book

book: title.md classplans.md lecture1.md lecture2.md book.css header.html
	mkdir -p output
	pandoc -s  title.md classplans.md lecture*.md  -H header.html -t html --toc -c book.css --mathjax > output/index.html
	cp -a book.css output/

update: output/index.html
	@echo $(BRANCH)
	@echo dirty: $(DIRTY)
	$(STASHSAVE)
	git stash
	git checkout gh-pages
	cp -r output/* .
	# The - at the beginning tells Make to ignore an error exit status
	# The line continuations make sure commit and push only happen if there are changes.
	- ! git diff-index --quiet HEAD -- && \
	git commit -a -m "Update book" && \
	git push origin gh-pages
	git checkout $(BRANCH)
	$(STASHPOP)
clean:
	rm -rf output