all: book

book: title.md classplans.md lecture1.md lecture2.md book.css
	mkdir -p output
	pandoc -s  --mathjax title.md classplans.md lecture*.md  -t html --toc -c book.css>output/book.html
	cp -a book.css output/
clean:
	rm -rf output