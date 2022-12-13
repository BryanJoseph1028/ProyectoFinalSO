#!/bin/bash
clear 
echo "------------------------------------"
echo "bienvenidos al sistema Educativo"
echo "Examen final" 
echo "------------------------------------"
echo "Se enviara el reporte al finalizar la prueba"
echo "  "
htmlFile=reporte.html
title=REPORTE_ESTUDIANTIL_EXAMEN_FINAL_DE_SISTEMAS_OPERATIVOS
opcion=0
while [ $opcion -ne 2 ];  do
echo "1.Realizar el Examen" 
echo "2.salir"
read opcion 

case $opcion in
1) clear 
echo "-------------------------------------------------"
echo "bienvenido a la prueba"
echo "-------------------------------------------------"
grep "$pregunta1" /home/bryan1010p/Escritorio/ProyectofinalSO/preguntas.txt
read respuesta1
if test $respuesta1 = pwd 
then
echo "Respuesta correcta."
echo "$respuesta1" >> /home/bryan1010p/Escritorio/ProyectofinalSO/respuestas.txt
else
echo "Lo siento, la respuesta correcta es: pwd."
fi
sleep 3
echo "$pregunta2" /home/bryan1010p/Escritorio/ProyectofinalSO/preguntas.txt
read respuesta2
if test $respuesta2 = Dockerfile 
then
echo "Respuesta correcta."
echo "$respuesta2 ">> /home/bryan1010p/Escritorio/ProyectofinalSO/respuestas.txt
else
echo "Lo siento, la respuesta correcta es: Dockerfile."
fi
sleep 3
"$pregunta3" /home/bryan1010p/Escritorio/ProyectofinalSO/preguntas.txt
read respuesta3
if test $respuesta3 = area_critica 
then
echo "Respuesta correcta."
echo "$respuesta3 ">> /home/bryan1010p/Escritorio/ProyectofinalSO/respuestas.txt
else
echo "Lo siento, la respuesta correcta es: area_critica."
fi
sleep 3
echo "ya finalizo el examen "
	echo "<html>" >> $htmlFile
	echo "<head>" >> $htmlFile
	echo "<meta charset =\"UTF-8\"><title>$title</title>" >> $htmlFile
	echo "</head>" >> $htmlFile
	echo "<body>" >> $htmlFile
	echo  "<h2>Bienvenido al Reposte Estudiantil</h2>">>$htmlFile
	echo "<table>">>$htmlFile
	for regristro in $(grep -w /home/bryan1010p/Escritorio/ProyectofinalSO/preguntas.txt| grep -w /home/bryan1010p/Escritorio/ProyectofinalSO/respuestas.txt); do
	pregunta=$(echo $regristro | cut -d: -f1)
	respuesta=$(echo $regristro | cut -d: -f1)
	echo "<tr>">>$htmlFile
	echo "<td>$pregunta </td>">>$htmlFile
	echo "<td>$respuesta </td>">>$htmlFile
	echo "</tr>">>$htmlFile
	echo "</body>">> $htmlFile
	echo "</html>" >> $htmlFile
		done
sh sistema.sh
;;
2)echo adios ;;
*) echo "opcion no valida" 
opcion=0;; 
esac 
sleep 2
done
