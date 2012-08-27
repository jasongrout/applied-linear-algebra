BRANCH=$(shell git symbolic-ref --short -q HEAD)
DIRTY=$(shell git diff-index --quiet HEAD -- ; echo $$?)
ifneq "$(DIRTY)" "0"
    STASHSAVE=git stash 
    STASHPOP=git stash pop 
else
    STASHSAVE=
    STASHPOP=
endif

all: xhtml

xhtml: title.md classplans.md lecture1.md lecture2.md book.css header.html
	mkdir -p output/xhtml
	pandoc -S -s  title.md classplans.md lecture1.md  -H header.html -t html --toc -c book.css --mathjax > output/xhtml/index.html
	cp -a book.css output/xhtml/

update: xhtml
	@echo $(BRANCH)
	@echo dirty: $(DIRTY)
	$(STASHSAVE)
	git stash
	git checkout gh-pages
	cp -r output/xhtml/* .
	# The - at the beginning tells Make to ignore an error exit status
	# The line continuations make sure commit and push only happen if there are changes.
	- ! git diff-index --quiet HEAD -- && \
	git commit -a -m "Update book" && \
	git push origin gh-pages
	git checkout $(BRANCH)
	$(STASHPOP)
	scp output/pdf/applied-linear-algebra.pdf sage.math:

latex:
	mkdir -p output/latex
	pandoc -S -s  title.md classplans.md lecture1.md  --no-highlight -t html --mathjax > output/latex/index.html
	cp -r by-sa.pdf output/latex
	xsltproc --novalid latex.xsl output/latex/index.html > output/latex/applied-linear-algebra-xsl.tex
	cat output/latex/applied-linear-algebra-xsl.tex| sed "s/&amp;/\&/g" > output/latex/applied-linear-algebra.tex

pdf: latex
	mkdir -p output/pdf
	cp output/latex/* output/pdf/
	cd output/pdf; pdflatex applied-linear-algebra.tex; pdflatex applied-linear-algebra.tex; pdflatex applied-linear-algebra.tex
	cp output/pdf/applied-linear-algebra.pdf output/xhtml/applied-linear-algebra.pdf

clean:
	rm -rf output
