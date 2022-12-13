#!/bin/bash
clear 
echo "------------------------------------"
echo "Bienvenido al Regristro de Preguntas" 
echo "------------------------------------"
echo ""
opcion=0
while [ $opcion -ne 3 ];  do
echo "1.Realizar Preguntas"
echo "2.Ver Preguntas" 
echo "3.salir"
read opcion 

case $opcion in
1)echo "Regristar la pregunta 1"
 read pregunta1
 echo "Regristrar la pregunta 2"
 read pregunta2
 echo "regristrar la pregunta 3"
 read pregunta3 
sleep 1 
echo "$pregunta1 $pregunta2 $pregunta3 " >> /home/bryan1010p/Escritorio/ProyectofinalSO/preguntas.txt
;; 
2) clear 
echo "preguntas Regristradas"
grep "$pregunta1" /home/bryan1010p/Escritorio/ProyectofinalSO/preguntas.txt
grep "$pregunta2" /home/bryan1010p/Escritorio/ProyectofinalSO/preguntas.txt
grep "$pregunta3" /home/bryan1010p/Escritorio/ProyectofinalSO/preguntas.txt 
echo "preguntas regristradas con exito"
sleep 3
echo "pulse intro para continuar"
read intro 
sh regristro.sh ;;
3)echo adios ;;
*) echo "opcion no valida, pulsa los numeros del 0 al 3" 
opcion=0;; 
esac 
sleep 2 
done
