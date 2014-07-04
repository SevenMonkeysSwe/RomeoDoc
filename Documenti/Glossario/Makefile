latex=pdflatex -synctex=1 -interaction=nonstopmode
aspell=sudo aspell --mode=tex --lang=it check
compile: 
	$(latex) Glossario.tex && $(latex) Glossario.tex
aspell:
	$(aspell) Glossario.tex
	cd Doc_to_Modify && $(aspell) History.tex
	cd Content && $(aspell) glossario_a-e.tex
	cd Content && $(aspell) glossario_f-j.tex
	cd Content && $(aspell) glossario_k-o.tex
	cd Content && $(aspell) glossario_p-t.tex
	cd Content && $(aspell) glossario_u-z.tex
clean:
	rm -rf *.aux 
	rm -rf *.log
	rm -rf *.out
	rm -rf *.toc 
	rm -rf *.synctex.gz
	rm -rf *.pdf
	rm -rf *.lof
	rm -rf *.lot
	rm -rf content/*.aux 
	rm -rf content/*.log
	rm -rf content/*.out
	rm -rf content/*.toc 
	rm -rf content/*.synctex.gz
	rm -rf content/*.pdf
	rm -rf content/*.lof
	rm -rf content/*.lot