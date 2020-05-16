resume.pdf: resume.tex
	latexmk -pdf resume.tex

.PHONY:
clean:
	latexmk -C
