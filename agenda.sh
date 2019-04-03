#!/bin/bash
echo "Agenda Eletrônica"
echo "Selecione uma Operação:"
echo "1) Inserir Novo  Registro"
echo "2) Consultar Registros"
echo "3) Sair"
read opcao
case $opcao in 
	1) echo "---Inserir Registro--- "
           echo "Entre com o seu Nome: "
           read nome
           echo "Entre com o seu Telefone: "
           read telefone 
           echo "Entre com o seu Email: "
           read email
           echo Os seguintes dados foram inseridos: 
		echo "Nome: $nome | Telefone: $telefone | Email: $email"
		echo "Deseja Salvar esses dados?"
		echo "1) Sim"
		echo "2) Não"
		read sv
		 case $sv in 
			1) echo "Salvando dados..."
			   reg="Nome: $nome | Telefone: $telefone | Email: $email"
		           echo $reg >> registros.txt
			;;
		        2) exit 0
		        ;;
        	 esac
        ;;
        2) echo "---Consultar Registro---"
		echo "Selecione o Tipo de Consulta: "
		echo "1) Buscar por Nome"
		echo "2) Ver todos os Registros"
		read rd
		 case $rd in
			 1) echo "Digite um nome para pesquisar: "
				read busca 
 			        grep -i $busca registros.txt
			 ;;
		         2) echo "---Histórico de Registros---"
				cat registros.txt
			 ;;
		         3) exit 0
		       	 ;;        
	          esac
	;;
        3) exit 0
        ;;
esac
exit 0;
