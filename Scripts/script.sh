#!/bin/bash


echo "Script in esecuzione"

#elimina il file glossario.Maiusc creato precedentemente
rm glossario.Maiusc
cp glossario glossario.Maiusc

#crea il file glossario.Maiusc contente le stesse paole del glossario 
perl -p -i -e '$_ =~ s/\b(\w)/\U$1/' glossario.Maiusc;


#array=(Analisi_dei_Requisiti/content Norme_di_Progetto/content Piano_di_Progetto/content Piano_di_Qualifica/content Specifica_Tecnica/Content Studio_di_Fattibilita/Content)
array=(Analisi_dei_Requisiti/content)

for item in ${array[*]}
do

#rimuove tutte le occorrenze di /glossario{} dal file
perl -p -i -e "s/\\\glossario{}//gi" ../Documenti/$item/*.tex;
perl -p -i -e "s/\\/glossario{}//gi" ../Documenti/$item/*.tex;
perl -p -i -e "s/\\\glossario//gi" ../Documenti/$item/*.tex;
perl -p -i -e "s/\\/glossario//gi" ../Documenti/$item/*.tex;
perl -p -i -e "s/\\\g{}//gi" ../Documenti/$item/*.tex;


#per ogni riga letta nel file glossario
while read LINE
do

#aggiunge il tag /glossario{} alle parole da glossario che non hanno i tag elencati nella propria riga

perl -p -i -e "s/ $LINE / $LINE\\\glossario{} /g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE\./ $LINE\\\glossario{}./g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE\,/ $LINE\\\glossario{},/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE\;/ $LINE\\\glossario{};/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE\:/ $LINE\\\glossario{}:/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE\}/ $LINE\\\glossario{}}/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE\"/ $LINE\\\glossario{}\"/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/'$LINE/'$LINE\\\glossario{}/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE\// $LINE\\\glossario{}\//g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;


echo "Termine $LINE marcato correttamente"
done <glossario

perl -p -i -e "s/feature/feature\\\glossario{}/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/ || m/feature extractor/ || m/features/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/Feature/Feature\\\glossario{}/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/ || m/Feature extractor/ || m/Features/) " ../Documenti/$item/*.tex;

while read LINE1
do

#aggiunge il tag /glossario{} alle parole da glossario che non hanno i tag elencati nella propria riga

perl -p -i -e "s/$LINE1 /$LINE1\\\glossario{} /g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE1\./ $LINE1\\\glossario{}./g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE1\,/ $LINE1\\\glossario{},/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE1\;/ $LINE1\\\glossario{};/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE1\:/ $LINE1\\\glossario{}:/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE1\}/ $LINE1\\\glossario{}}/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE1\"/ $LINE1\\\glossario{}\"/g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\#\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

perl -p -i -e "s/ $LINE1\// $LINE1\\\glossario{}\//g if !(m/\\\section/ || m/\\\subsection/ || m/\\\subsubsection/ || m/\\\caption/ || m/\\#\includegraphics/ || m/\\\label/ || m/\\\hyperref/) " ../Documenti/$item/*.tex;

echo "Termine $LINE1 marcato correttamente"
done <glossario.Maiusc


done

echo "Script eseguito correttamente"
