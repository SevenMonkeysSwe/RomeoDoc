#Chiamando da terminale dentro alla cartella scripts make RR (o solo make) vengono creati tutti i pdf e spostati dentro la cartella RR.
#c'è un problema con gli indici dei vari documenti con la compilazione con pdflatex.
latex=pdflatex -synctex=1 -interaction=nonstopmode
aspell=sudo aspell --mode=tex --lang=it check
RA:
	#Creo la cartelle, se esse non esitono.
	mkdir -p ../Consegne
	mkdir -p ../Consegne/RR
	mkdir -p ../Consegne/RR/Interni
	mkdir -p ../Consegne/RR/Esterni
	mkdir -p ../Consegne/RP
	mkdir -p ../Consegne/RP/Interni
	mkdir -p ../Consegne/RP/Esterni
	mkdir -p ../Consegne/RQ
	mkdir -p ../Consegne/RQ/Interni
	mkdir -p ../Consegne/RQ/Esterni
	mkdir -p ../Consegne/RA
	mkdir -p ../Consegne/RA/Esterni
	mkdir -p ../Consegne/RA/Interni
	@echo "Elimino i vecchi pdf."
	rm -rf ../Consegne/RQ/Interni/*.pdf
	rm -rf ../Consegne/RQ/Esterni/*.pdf
	rm -rf ../Consegne/RQ/*.pdf
	#genero il pdf di NormeDiProgetto
	cd ../Documenti/Norme_di_Progetto && ${latex} Norme_di_Progetto.tex && ${latex} Norme_di_Progetto.tex
	@echo "Generato Norme_di_Progetto"
	#genero il pdf di Analisi_dei_Requisiti
	cd ../Documenti/Analisi_dei_Requisiti && ${latex} Analisi_dei_Requisiti.tex && ${latex} Analisi_dei_Requisiti.tex
	@echo "Generato Analisi_dei_Requisiti.pdf."
	#genero il pdf di PianoDiProgetto
	cd ../Documenti/Piano_di_Progetto && ${latex} Piano_di_Progetto.tex && ${latex} Piano_di_Progetto.tex
	@echo "Generato PianoDiProgetto.pdf."
	#genero il pdf di PianoDiQualifica
	cd ../Documenti/Piano_di_Qualifica && ${latex} Piano_di_Qualifica.tex && ${latex} Piano_di_Qualifica.tex
	@echo "Generato PianoDiQualifica.pdf."
	#genero il pdf di Glossario
	cd ../Documenti/Glossario && ${latex} Glossario.tex && ${latex} Glossario.tex
	@echo "Generato Glossario.pdf."
	#genero il pdf di Specifica Tecnica
	cd ../Documenti/Specifica_Tecnica && ${latex} Specifica_Tecnica.tex && ${latex} Specifica_Tecnica.tex
	#genero il pdf della Definizione di Prodotto
	cd ../Documenti/Definizione_di_Prodotto && ${latex} Definizione_di_Prodotto.tex && ${latex} Definizione_di_Prodotto.tex
	#genero il pdf del Manuale Utente
	cd ../Documenti/Manuale_Utente && ${latex} User_Manual.tex && ${latex} User_Manual.tex
	#genero la lettera
	cd ../Documenti/ && ${latex} Lettera_di_Presentazione.tex && ${latex} Lettera_di_Presentazione.tex
	#geenro il verbale
	cd ../Documenti/Verbali/Verbale8_Esterno_2014-06-04 && ${latex} Verbale8_Esterno_2014-06-04.tex && ${latex} Verbale8_Esterno_2014-06-04.tex
	#Sposto i pdf nella cartella RP
	mv ../Documenti/Analisi_dei_Requisiti/Analisi_dei_Requisiti.pdf ../Consegne/RA/Esterni/Analisi_dei_Requisiti-v4.0.0.pdf
	mv ../Documenti/Norme_di_Progetto/Norme_di_Progetto.pdf ../Consegne/RA/Interni/Norme_di_Progetto-v4.0.0.pdf
	mv ../Documenti/Piano_di_Progetto/Piano_di_Progetto.pdf ../Consegne/RA/Esterni/Piano_di_Progetto-v4.0.0.pdf
	mv ../Documenti/Piano_di_Qualifica/Piano_di_Qualifica.pdf ../Consegne/RA/Esterni/Piano_di_Qualifica-v4.0.0.pdf
	mv ../Documenti/Glossario/Glossario.pdf ../Consegne/RA/Esterni/Glossario-v4.0.0.pdf
	mv ../Documenti/Specifica_Tecnica/Specifica_Tecnica.pdf ../Consegne/RA/Esterni/Specifica_Tecnica-v3.0.0.pdf
	mv ../Documenti/Definizione_di_Prodotto/Definizione_di_Prodotto.pdf ../Consegne/RA/Esterni/Definizione_di_Prodotto-v2.0.0.pdf
	mv ../Documenti/Manuale_Utente/User_Manual.pdf ../Consegne/RA/Esterni/User_Manual-v2.0.0.pdf
	mv ../Documenti/Verbali/Verbale8_Esterno_2014-06-04/Verbale8_Esterno_2014-06-04.pdf ../Consegne/RA/Esterni
	cp -fHip ../Documenti/Lettera_di_Presentazione.pdf ../Consegne/RA/
	@echo "Generazione pdf RQ completata."
aspell:
	#Chimando da terminale make aspell viene fatta l'analisi di tutti i documenti.
	@echo "Inizio analisi dei file di Analisi_dei_Requisiti"
	cd ../Documenti/Analisi_dei_Requisiti && $(aspell) Analisi_dei_Requisiti.tex
	cd ../Documenti/Analisi_dei_Requisiti/doc_to_modify && $(aspell) history.tex
	cd ../Documenti/Analisi_dei_Requisiti/content && $(aspell) Introduzione.tex
	cd ../Documenti/Analisi_dei_Requisiti/content && $(aspell) DescrizioneGenerale.tex
	cd ../Documenti/Analisi_dei_Requisiti/content && $(aspell) CasiDuso.tex
	cd ../Documenti/Analisi_dei_Requisiti/content && $(aspell) Requisiti.tex
	cd ../Documenti/Analisi_dei_Requisiti/content && $(aspell) Tracciamento.tex
	cd ../Documenti/Analisi_dei_Requisiti/content && $(aspell) tracciamento_requisiti_tests.tex
	cd ../Documenti/Analisi_dei_Requisiti/content && $(aspell) Riepilogo.tex
	@echo "Fine analisi dei file di Analisi_dei_Requisiti"
	@echo "Inizio analisi dei file di Norme_di_Progetto."
	cd ../Documenti/Norme_di_Progetto/ &&  $(aspell) Norme_di_Progetto.tex
	cd ../Documenti/Norme_di_Progetto/doc_to_modify/ &&  $(aspell) history.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Introduzione.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Comunicazioni.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Incontri.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Documenti.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Repository.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Procedure.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Processi.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Processi_Primari.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Protocollo.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Ambiente.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Meccanismi_controllo_rendicontazione.tex
	cd ../Documenti/Norme_di_Progetto/content &&  $(aspell) Lista_Controllo.tex
	@echo "Fine analisi dei file di Norme_di_Progetto."
	@echo "Inizio analisi dei file di Piano_di_Progetto."
	cd ../Documenti/Piano_di_Progetto && $(aspell) Piano_di_Progetto.tex
	cd ../Documenti/Piano_di_Progetto/Doc_to_Modify && $(aspell) history.tex
	cd ../Documenti/Piano_di_Progetto/content &&  $(aspell) organigramma.tex
	cd ../Documenti/Piano_di_Progetto/content &&  $(aspell) Introduzione.tex
	cd ../Documenti/Piano_di_Progetto/content &&  $(aspell) pianificazione.tex
	cd ../Documenti/Piano_di_Progetto/content &&  $(aspell) suddivisioneLavoro.tex
	cd ../Documenti/Piano_di_Progetto/content &&  $(aspell) Analisi_Rischi.tex
	cd ../Documenti/Piano_di_Progetto/content &&  $(aspell) consuntivo.tex
	@echo "Fine analisi dei file di Piano_di_Progetto."
	@echo "Inizio analisi dei file di Glossario."
	cd ../Documenti/Glossario && $(aspell) Glossario.tex
	cd ../Documenti/Glossario/Doc_to_Modify && $(aspell) History.tex
	cd ../Documenti/Glossario/Content && $(aspell) glossario_a-e.tex
	cd ../Documenti/Glossario/Content && $(aspell) glossario_f-j.tex
	cd ../Documenti/Glossario/Content && $(aspell) glossario_k-o.tex
	cd ../Documenti/Glossario/Content && $(aspell) glossario_p-t.tex
	cd ../Documenti/Glossario/Content && $(aspell) glossario_u-z.tex
	@echo "Fine analisi dei file di Glossario."
	@echo "Inizo analisi dei file di Piano_di_Qualifica"
	cd ../Documenti/Piano_di_Qualifica && $(aspell) Piano_di_Qualifica.tex
	cd ../Documenti/Piano_di_Qualifica/doc_to_modify && $(aspell) history.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) introduzione.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Resoconto_attivita.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Gestione_amministrativa.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Standard_di_qualita.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) visione_generale.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Dettaglio_esiti.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Pianificazione_dei_test.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Standard_di_qualita.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Tracciamento_test_di_integrazione.tex 
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Tracciamento_test_di_sistema.tex
	cd ../Documenti/Piano_di_Qualifica/content && $(aspell) Collaudo.tex
	@echo "Fine analisi  Piano_di_Qualifica"
	@echo "Inizio analisi dei file di Specifica_Tecnica"
	cd ../Documenti/Specifica_Tecnica && $(aspell) Specifica_Tecnica.tex
	cd ../Documenti/Specifica_Tecnica/Doc_to_Modify && $(aspell) History.tex
	cd ../Documenti/Specifica_Tecnica/content && $(aspell) Introduzione.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) Architettura.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) compContr.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) compModel.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) compView.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) Database.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) Descrizione_DP.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) Design_Pattern.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) Prototipo_ui.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) Stime_fattibilita.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) Tecnologie.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) tracciamento_componenti_requisiti.tex
	cd ../Documenti/Specifica_Tecnica/Content && $(aspell) tracciamento_requisiti_componenti.tex
	@echo "Fine analisi dei file di Specifica_Tecnica"
	@echo "Inizi analisi dei file della Definizione_di_Prodotto"
	cd ../Documenti/Definizione_di_Prodotto && $(aspell) Definizione_di_Prodotto.tex
	cd ../Documenti/Definizione_di_Prodotto/doc_to_modify && $(aspell) history.tex
	cd ../Documenti/Definizione_di_Prodotto/Content && $(aspell) Introduzione.tex
	cd ../Documenti/Definizione_di_Prodotto/Content && $(aspell) Standard.tex
	cd ../Documenti/Definizione_di_Prodotto/Content && $(aspell) Componenti.tex
	@echo "Fine analisi dei file della Definizione_di_Prodotto"
	@echo "Finita l'analisi di tutti i documenti."
clean:
	#Elimino tutti i file spazzatura nella cartella Documenti
	rm -rf ../Documenti/*.aux 
	rm -rf ../Documenti/*.log
	rm -rf ../Documenti/*.out
	rm -rf ../Documenti/*.toc 
	rm -rf ../Documenti/*.synctex.gz
	rm -rf ../Documenti/*.lof
	rm -rf ../Documenti/*.lot  
	#Elimino tutti i file spazzatura nella cartella Norme_di_Progetto
	rm -rf ../Documenti/Norme_di_Progetto/*.aux 
	rm -rf ../Documenti/Norme_di_Progetto/*.log
	rm -rf ../Documenti/Norme_di_Progetto/*.out
	rm -rf ../Documenti/Norme_di_Progetto/*.toc 
	rm -rf ../Documenti/Norme_di_Progetto/*.synctex.gz
	rm -rf ../Documenti/Norme_di_Progetto/*.pdf
	rm -rf ../Documenti/Norme_di_Progetto/*.lof
	rm -rf ../Documenti/Norme_di_Progetto/*.lot  
	#Elimino tutti i file spazzatura nella cartella Piano_di_Progetto
	rm -rf ../Documenti/Piano_di_Progetto/*.aux 
	rm -rf ../Documenti/Piano_di_Progetto/*.log
	rm -rf ../Documenti/Piano_di_Progetto/*.out
	rm -rf ../Documenti/Piano_di_Progetto/*.toc 
	rm -rf ../Documenti/Piano_di_Progetto/*.synctex.gz
	rm -rf ../Documenti/Piano_di_Progetto/*.pdf
	rm -rf ../Documenti/Piano_di_Progetto/*.lof
	rm -rf ../Documenti/Piano_di_Progetto/*.lot  
	#Elimino tutti i file spazzatura nella cartella Piano_di_Qualifica
	rm -rf ../Documenti/Piano_di_Qualifica/*.aux 
	rm -rf ../Documenti/Piano_di_Qualifica/*.log
	rm -rf ../Documenti/Piano_di_Qualifica/*.out
	rm -rf ../Documenti/Piano_di_Qualifica/*.toc 
	rm -rf ../Documenti/Piano_di_Qualifica/*.synctex.gz
	rm -rf ../Documenti/Piano_di_Qualifica/*.pdf
	rm -rf ../Documenti/Piano_di_Qualifica/*.lof
	rm -rf ../Documenti/Piano_di_Qualifica/*.lot  
	#Elimino tutti i file spazzatura nella cartella Analisi_dei_Requisiti
	rm -rf ../Documenti/Analisi_dei_Requisiti/*.aux 
	rm -rf ../Documenti/Analisi_dei_Requisiti/*.log
	rm -rf ../Documenti/Analisi_dei_Requisiti/*.out
	rm -rf ../Documenti/Analisi_dei_Requisiti/*.toc 
	rm -rf ../Documenti/Analisi_dei_Requisiti/*.synctex.gz
	rm -rf ../Documenti/Analisi_dei_Requisiti/*.pdf
	rm -rf ../Documenti/Analisi_dei_Requisiti/*.lof
	rm -rf ../Documenti/Analisi_dei_Requisiti/*.lot  
	#Elimino tutti i file spazzatura nella cartella Glossario
	rm -rf ../Documenti/Glossario/*.aux 
	rm -rf ../Documenti/Glossario/*.log
	rm -rf ../Documenti/Glossario/*.out
	rm -rf ../Documenti/Glossario/*.toc 
	rm -rf ../Documenti/Glossario/*.synctex.gz
	rm -rf ../Documenti/Glossario/*.pdf
	rm -rf ../Documenti/Glossario/*.lof
	rm -rf ../Documenti/Glossario/*.lot  
	#Elimino tutti i file spazzatura nella cartella Studio_di_Fattibilità
	rm -rf ../Documenti/Studio_di_Fattibilita/*.aux 
	rm -rf ../Documenti/Studio_di_Fattibilita/*.log
	rm -rf ../Documenti/Studio_di_Fattibilita/*.out
	rm -rf ../Documenti/Studio_di_Fattibilita/*.toc 
	rm -rf ../Documenti/Studio_di_Fattibilita/*.synctex.gz
	rm -rf ../Documenti/Studio_di_Fattibilita/*.pdf
	rm -rf ../Documenti/Studio_di_Fattibilita/*.lof
	rm -rf ../Documenti/Studio_di_Fattibilita/*.lot  
	#Elimino tutti i file spazzatura nella cartella Specifica_Tecnica
	rm -rf ../Documenti/Specifica_Tecnica/*.aux 
	rm -rf ../Documenti/Specifica_Tecnica/*.log
	rm -rf ../Documenti/Specifica_Tecnica/*.out
	rm -rf ../Documenti/Specifica_Tecnica/*.toc 
	rm -rf ../Documenti/Specifica_Tecnica/*.synctex.gz
	rm -rf ../Documenti/Specifica_Tecnica/*.pdf
	rm -rf ../Documenti/Specifica_Tecnica/*.lof
	rm -rf ../Documenti/Specifica_Tecnica/*.lot  
	#Elimino tutti i file spazzatura nella cartella Definizione_di_Prodotto
	rm -rf ../Documenti/Definizione_di_Prodotto/*.aux 
	rm -rf ../Documenti/Definizione_di_Prodotto/*.log
	rm -rf ../Documenti/Definizione_di_Prodotto/*.out
	rm -rf ../Documenti/Definizione_di_Prodotto/*.toc 
	rm -rf ../Documenti/Definizione_di_Prodotto/*.synctex.gz
	rm -rf ../Documenti/Definizione_di_Prodotto/*.pdf
	rm -rf ../Documenti/Definizione_di_Prodotto/*.lof
	rm -rf ../Documenti/Definizione_di_Prodotto/*.lot  
	#Elimino tutti i file spazzatura nella cartella Verbale1_Interno_2013-11-27
	rm -rf ../Documenti/Verbali/Verbale1_Interno_2013-11-27/*.aux 
	rm -rf ../Documenti/Verbali/Verbale1_Interno_2013-11-27/*.log
	rm -rf ../Documenti/Verbali/Verbale1_Interno_2013-11-27/*.out
	rm -rf ../Documenti/Verbali/Verbale1_Interno_2013-11-27/*.toc 
	rm -rf ../Documenti/Verbali/Verbale1_Interno_2013-11-27/*.synctex.gz
	rm -rf ../Documenti/Verbali/Verbale1_Interno_2013-11-27/*.pdf
	rm -rf ../Documenti/Verbali/Verbale1_Interno_2013-11-27/*.lof
	rm -rf ../Documenti/Verbali/Verbale1_Interno_2013-11-27/*.lot  
	#Elimino tutti i file spazzatura nella cartella Verbale2_Esterno_2013-12-03
	rm -rf ../Documenti/Verbali/Verbale2_Esterno_2013-12-03/*.aux 
	rm -rf ../Documenti/Verbali/Verbale2_Esterno_2013-12-03/*.log
	rm -rf ../Documenti/Verbali/Verbale2_Esterno_2013-12-03/*.out
	rm -rf ../Documenti/Verbali/Verbale2_Esterno_2013-12-03/*.toc 
	rm -rf ../Documenti/Verbali/Verbale2_Esterno_2013-12-03/*.synctex.gz
	rm -rf ../Documenti/Verbali/Verbale2_Esterno_2013-12-03/*.pdf
	rm -rf ../Documenti/Verbali/Verbale2_Esterno_2013-12-03/*.lof
	rm -rf ../Documenti/Verbali/Verbale2_Esterno_2013-12-03/*.lot  
	#Elimino tutti i file spazzatura nella cartella Verbale3_Esterno_2013-12-13
	rm -rf ../Documenti/Verbali/Verbale3_Esterno_2013-12-13/*.aux 
	rm -rf ../Documenti/Verbali/Verbale3_Esterno_2013-12-13/*.log
	rm -rf ../Documenti/Verbali/Verbale3_Esterno_2013-12-13/*.out
	rm -rf ../Documenti/Verbali/Verbale3_Esterno_2013-12-13/*.toc 
	rm -rf ../Documenti/Verbali/Verbale3_Esterno_2013-12-13/*.synctex.gz
	rm -rf ../Documenti/Verbali/Verbale3_Esterno_2013-12-13/*.pdf
	rm -rf ../Documenti/Verbali/Verbale3_Esterno_2013-12-13/*.lof
	rm -rf ../Documenti/Verbali/Verbale3_Esterno_2013-12-13/*.lot  
	#Elimino tutti i file spazzatura nella cartella Verbale4_Esterno_2013-12-17
	rm -rf ../Documenti/Verbali/Verbale4_Esterno_2013-12-17/*.aux 
	rm -rf ../Documenti/Verbali/Verbale4_Esterno_2013-12-17/*.log
	rm -rf ../Documenti/Verbali/Verbale4_Esterno_2013-12-17/*.out
	rm -rf ../Documenti/Verbali/Verbale4_Esterno_2013-12-17/*.toc 
	rm -rf ../Documenti/Verbali/Verbale4_Esterno_2013-12-17/*.synctex.gz
	rm -rf ../Documenti/Verbali/Verbale4_Esterno_2013-12-17/*.pdf
	rm -rf ../Documenti/Verbali/Verbale4_Esterno_2013-12-17/*.lof
	rm -rf ../Documenti/Verbali/Verbale4_Esterno_2013-12-17/*.lot
	#Elimino tutti i file spazzatura nella cartella Verbale5_Interno_2014-01-09
	rm -rf ../Documenti/Verbali/Verbale5_Interno_2014-01-09/*.aux 
	rm -rf ../Documenti/Verbali/Verbale5_Interno_2014-01-09/*.log
	rm -rf ../Documenti/Verbali/Verbale5_Interno_2014-01-09/*.out
	rm -rf ../Documenti/Verbali/Verbale5_Interno_2014-01-09/*.toc 
	rm -rf ../Documenti/Verbali/Verbale5_Interno_2014-01-09/*.synctex.gz
	rm -rf ../Documenti/Verbali/Verbale5_Interno_2014-01-09/*.pdf
	rm -rf ../Documenti/Verbali/Verbale5_Interno_2014-01-09/*.lof
	rm -rf ../Documenti/Verbali/Verbale5_Interno_2014-01-09/*.lot
	#Elimino tutti i file spazzatura nella cartella Verbale6_Interno_2014-01_29
	rm -rf ../Documenti/Verbali/Verbale6_Interno_2014-01_29/*.aux 
	rm -rf ../Documenti/Verbali/Verbale6_Interno_2014-01_29/*.log
	rm -rf ../Documenti/Verbali/Verbale6_Interno_2014-01_29/*.out
	rm -rf ../Documenti/Verbali/Verbale6_Interno_2014-01_29/*.toc 
	rm -rf ../Documenti/Verbali/Verbale6_Interno_2014-01_29/*.synctex.gz
	rm -rf ../Documenti/Verbali/Verbale6_Interno_2014-01_29/*.pdf
	rm -rf ../Documenti/Verbali/Verbale6_Interno_2014-01_29/*.lof
	rm -rf ../Documenti/Verbali/Verbale6_Interno_2014-01_29/*.lot
	#Elimino tutti i file temporanei nella cartella Scripts
	rm -rf *.aux *.log *.toc *.synctex.gz *.pdf *.fls *.fdb_latexmk
	@echo "Pulizia completata."
