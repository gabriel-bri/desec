#!/bin/bash

if [ "$1" == "" ]

then
	echo "MODO DE USO: $0 SITE"
	echo "EXEMPLO $0 businesscorp.com.br"
else

declare -i COUNT=0

echo -e "========================================================================\n"

echo -e "\t\033[32m [+] Resolvendo URLs em:\033[m\033[31m $1 \033[m\n"

echo -e "========================================================================\n"

wget $1 2> /dev/null

echo -e "\033[31;5m [+] Concluído: Salvando os resultados em $1.ip.txt \033[m \n"

grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > $1.ip.txt

echo -e "========================================================================\n"
echo -e "\tLine \t\t\tIP \t\t\tADDRESS\n"
echo -e "========================================================================\n"

#for url in $(cat arquivo.txt); do host $url | grep "has address" ; done

for url in $(cat $1.ip.txt);
	do host $url | grep "has address" | awk -v contador="$COUNT" -F ' ' '{print "\t"contador, "\t\t"$4, "\t\t"$1}'
	COUNT=$(($COUNT+1))
done

rm index.html
fi
