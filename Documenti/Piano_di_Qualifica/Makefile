latex=pdflatex -synctex=1 -interaction=nonstopmode
aspell=sudo aspell --mode=tex --lang=it check
compile: 
	$(latex) Piano_di_Qualifica.tex && $(latex) Piano_di_Qualifica.tex
aspell:
	$(aspell) Piano_di_Qualifica.tex
	cd doc_to_modify && $(aspell) history.tex
	cd content && $(aspell) introduzione.tex
	cd content && $(aspell) Resoconto_attivita.tex
	cd content && $(aspell) Gestione_amministrativa.tex
	cd content && $(aspell) Standard_di_qualita.tex
	cd content && $(aspell) visione_generale.tex
	cd content && $(aspell)	Collaudo.tex
	cd content && $(aspell) Dettaglio_esiti.tex
	cd content && $(aspell) Pianificazione_dei_test.tex
	cd content && $(aspell) Tracciamento_test_di_integrazione.tex
	cd content && $(aspell) tracciamento_test_di_sistema.tex
	cd content && $(aspell) Tracciamento_test_unita_metodi.tex
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
