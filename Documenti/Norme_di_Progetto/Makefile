latex=pdflatex -synctex=1 -interaction=nonstopmode
aspell=sudo aspell --mode=tex --lang=it check
compile: 
	$(latex) Norme_di_Progetto.tex && $(latex) Norme_di_Progetto.tex
aspell:
	$(aspell) Norme_di_Progetto.tex
	cd doc_to_modify/ &&  $(aspell) history.tex
	cd content &&  $(aspell) Introduzione.tex
	cd content &&  $(aspell) Comunicazioni.tex
	cd content &&  $(aspell) Incontri.tex
	cd content &&  $(aspell) Repository.tex
	cd content &&  $(aspell) Documenti.tex
	cd content &&  $(aspell) Procedure.tex
	cd content &&  $(aspell) Processi.tex
	cd content &&  $(aspell) Protocollo.tex
	cd content &&  $(aspell) Ambiente.tex
	cd content &&  $(aspell) Lista_Controllo.tex
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