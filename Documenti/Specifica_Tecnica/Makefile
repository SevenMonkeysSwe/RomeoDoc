latex=pdflatex -synctex=1 -interaction=nonstopmode
aspell=sudo aspell --mode=tex --lang=it check
compile: 
	$(latex) Specifica_Tecnica.tex && $(latex) Specifica_Tecnica.tex
aspell:
	$(aspell) Specifica_Tecnica.tex
	cd Doc_to_Modify && $(aspell) History.tex
	cd content && $(aspell) Introduzione.tex
	cd content && $(aspell) Architettura.tex
	cd content && $(aspell) Componenti_Classi.tex
	cd content && $(aspell) Database.tex
	cd content && $(aspell) Descrizione_DP.tex
	cd content && $(aspell) Design_Pattern.tex
	cd content && $(aspell) Diagrammi_Attivita.tex
	cd content && $(aspell) Prototipo_ui.tex
	cd content && $(aspell) Stime_fattibilita.tex
	cd content && $(aspell) Tecnologie.tex
	cd content && $(aspell) tracciamento_componenti_requisiti.tex
	cd content && $(aspell) tracciamento_requisiti_componenti.tex

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