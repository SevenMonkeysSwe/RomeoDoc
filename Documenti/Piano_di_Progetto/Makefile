latex=pdflatex -synctex=1 -interaction=nonstopmode
aspell=sudo aspell --mode=tex --lang=it check
compile: 
	$(latex) Piano_di_Progetto.tex && $(latex) Piano_di_Progetto.tex
aspell:
	$(aspell) Piano_di_Progetto.tex
	cd Doc_to_Modify && $(aspell) history.tex
	cd content &&  $(aspell) organigramma.tex
	cd content &&  $(aspell) Introduzione.tex
	cd content &&  $(aspell) pianificazione.tex
	cd content &&  $(aspell) suddivisioneLavoro.tex
	cd content &&  $(aspell) Prospetto_Economico.tex
	cd content &&  $(aspell) Analisi_Rischi.tex
	cd content &&  $(aspell) Meccanismi_controllo_rendicontazione.tex
	cd content &&  $(aspell) consuntivo.tex
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