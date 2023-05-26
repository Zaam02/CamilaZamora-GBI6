### Ejercicio 1.10.1 Marra 2014

#Indicar el directorio de donde se extrae la data

cd ../../CSB/unix/sandbox/

############
# Calcular el tamaño del archivo

ls -lh ../data/Marra2014_data.fasta

#####
#Copia de marra en sandbox y nombrar my_file.fasta

cp ../data/Marra2014_data.fasta my_file.fasta

##### isogrupos

grep isogroup0036 my_file.fasta | wc -l

###Reemplazar delimitar de dos espacios por comas.

cat my_file.fasta | tr -s ' ' ',' > my_file.tmp
mv my_file.tmp my_file.fasta

####### isogrupos unicos

grep -o 'isogroup[[:digit:]]\+' my_file.fasta | sort | uniq |wc -l

###Contings

grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1
