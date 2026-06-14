.PHONY: all paper figures stats clean

MIN_MEM := ../min-mem

all: paper

stats figures:
	python3 scripts/generate_paper.py

paper: stats
	latexmk -pdf -interaction=nonstopmode -outdir=build paper.tex
	cp build/paper.pdf min-mem-lexical-minification.pdf
	@echo "Built min-mem-lexical-minification.pdf (6 pages)"

clean:
	latexmk -C -outdir=build
	rm -rf build generated/*.tex
