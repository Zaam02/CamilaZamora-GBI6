###########Ejercico 1.10.2
ruta="../../CSB/unix/data/Gesquiere2011_data.csv"

####Niveles de individiduos 3 y 27

cut -f 1 $ruta | grep -w 3 | grep -c 3 
cut -f 1 $ruta | grep -w 27 | grep -c 27

######Crear un archivo sh para contar cada individuo utilizando variables

vector=`tail -n +2 $ruta | cut -f 1 | uniq`

for i in $vector
do
conteo=`bash Gesquiere_count.sh $ruta $i`
echo "ID:" $i "conteo:" $conteo
done 
