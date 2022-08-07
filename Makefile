svg:
	dot dot/example.dot -Tsvg -o ./images/example.svg
	dot dot/example-2.dot -Tsvg -o ./images/example-2.svg
png:
	dot dot/example-2.dot -Tpng -o ./images/example-2.png
