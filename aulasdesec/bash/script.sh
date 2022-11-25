#!/bin/bash
echo 'Desec Security'
echo 'Sistema ligado por: ' $(uptime -p)
echo 'Diretório atual: ' $(pwd)
echo 'Usuário atual: ' $(whoami)
echo 'Digite o IP alvo:'
read ip
echo 'Varrendo o IP ' $ip
