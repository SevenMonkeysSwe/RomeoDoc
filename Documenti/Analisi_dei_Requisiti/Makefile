latex=pdflatex -synctex=1 -interaction=nonstopmode
aspell=sudo aspell --mode=tex --lang=it check
compile: 
	$(latex) Analisi_dei_Requisiti.tex && $(latex) Analisi_dei_Requisiti.tex
aspell:
	$(aspell) Analisi_dei_Requisiti.tex
	cd doc_to_modify && $(aspell) history.tex
	cd content && $(aspell) Introduzione.tex
	cd content && $(aspell) DescrizioneGenerale.tex
	cd content && $(aspell) CasiDuso.tex
	cd content && $(aspell) DiagrammiAttivita.tex
	cd content && $(aspell) Requisiti.tex
	cd content && $(aspell) Tracciamento.tex
	cd content && $(aspell) Riepilogo.tex

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
