resume.pdf: resume.tex
	latexmk -pdf resume.tex

.PHONY: rebuild
rebuild: clean resume.pdf

.PHONY: clean
clean:
	latexmk -C

.PHONY: proper
proper:
	latexmk -c

