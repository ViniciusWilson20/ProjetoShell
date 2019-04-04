#!/bin/bash

ip=$(hostname -I)
function informacoes(){
 echo "Informações da Rede: "
 echo "IP da Maquina: $ip"	 
 echo "Nome da Maquina: $(hostname)"
 echo "Arquiterura do Computador: $(arch)"
 echo "Versão do Kernel: $(uname -r)" 
 }
for ((i=1; i<=254; i++))
do
	ref="10.0.2.$i"
        if [ $ref = $ip ]
	then
		informacoes
	fi
done

