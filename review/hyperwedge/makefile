all: 
	max_print_line=1000 latexmk -pdf  -latexoption='-file-line-error' -latexoption='-synctex=1' -latexoption='-shell-escape' -latexoption='--halt-on-error' hyperwedge.tex

clean:
	rm -f *.aux *.fdb_latexmk *.fls *.log *.pdf *.synctex.gz
