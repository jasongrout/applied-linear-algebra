all: book

book: title.md classplans.md lecture1.md lecture2.md book.css header.html
	mkdir -p output
	pandoc -s  title.md classplans.md lecture*.md  -H header.html -t html --toc -c book.css --mathjax > output/index.html
	cp -a book.css output/
clean:
	rm -rf output