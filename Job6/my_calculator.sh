#!/bin/bash 
# modif à faire ( if $1 $2)
case $2 in
	"x")
	echo "Résulat=" $(($1*$3))
	;;
	"/")
	echo "Résultat=" $(($1/$3))
	;;
	"+")
	echo "Résultat=" $(($1+$3))
	;;
	"-")
	echo "Résultat=" $(($1-$3))
	;;
	
	*) echo "Opérateur non valide. Opérateur disponible: + - x /"
esac 

