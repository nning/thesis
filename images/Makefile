all: object-relations-1.pdf object-relations-2.pdf

object-relations-1.pdf: object-relations-1.dot
	dot -Tpdf object-relations-1.dot -o object-relations-1.pdf

object-relations-2.pdf: object-relations-2.dot
	dot -Tpdf object-relations-2.dot -o object-relations-2.pdf

clean:
	rm -f object-relations-1.pdf object-relations-2.pdf
