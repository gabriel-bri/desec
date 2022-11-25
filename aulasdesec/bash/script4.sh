#!/bin/bash
echo "O cliente autorizou o pentest?"
echo "1 - Sim | 2 - Não"
read resp

case $resp in

"1")
	echo "Pode iniciar o pentest"
;;

"2")
	echo "Pentest não autorizado, aguarde!"
;;
esac

