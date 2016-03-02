#Sistema Financeiro Pessoal [DELPHI Seattle]
Sistema desenvolvido em Delphi 10 Seattle para finanças pessoais ao longo da disciplina de Programação Avançada para Windows.

##Necessário o uso dos seguintes recursos:
	- MySQL 5.7: https://dev.mysql.com/downloads/mysql/
	- Connector ODBC 5.3.4(32x): http://dev.mysql.com/downloads/connector/odbc/
	- Delphi 10 Seatle

Para execurtar a aplicação precisa-se instalar os dois primeiros componentes e colocar o banco de dados. Inicialmente
deve-se configurar fonte de dados ODBC do windows. Procure no Iniciar> Clique em configurar fonte de dados OBDC (32bit);
cutuque 'Adicionar' > Selecione "MySql ODBC 5.3 Unicode Driver" > Concluir >  Em data source name: MySql e o resto as
configurações do database.

O banco de dados do programa encontra-se em sua raiz com o nome "BancodeDados.sql".


##Senha do usuario padrão: senha


---------- ATUALIZAÇÕES: 06/02 -------------------

Icone do projeto adicionado, e opção de otimização do projeto (Propriedades) ativada;
Implementação da Unit7 'Deletar dados'; 
Alteração no banco de dados: Nome das transações agora são unicos;
Correção na Unit3 : Botão cancelar não estava abrindo o Form2;
Form3, e form7: Os campos são limpos depois de uma inserção de dados;

