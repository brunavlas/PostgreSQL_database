# PostgreSQL_database
Desafio para processo seletivo utilizando o PostgreSQL.

## Sobre

Criação de um banco de dados no PostgreSQL com os seguintes requisitos:

1. Uma tabela "Users", com colunas de identificação, especialmente uma coluna de id.

2. Uma tabela "login_ips", com colunas: id, user_id, created date e  origen_ip (do tipo string). 
  - As colunas id de cada tabela devem ser inteiros sequenciais, e chaves primárias.
     - A coluna user_id é uma chave estrangeira apontando para a tabela de users. 

  Na prática, a tabela "login_ips" registra o IP do usuário cada vez que faz login na plataforma. Assim, cada user possui vários login_ips associados, cada um registrando o IP como string e o instante como datetime. Para simplificar, os ips são strings com um único caractere (por exemplo: "3", "a", ou "G"). 

3. Insira dados genéricos em cada tabela.

4. Dado um IP específico (por exemplo "G"), escreva uma query que liste apenas os usuários cujo último acesso foi com esse IP (origem_ip = 'G').

## Tecnologia

- PostgreSQL
  
## Etapas
  
- [x] Criação de uma database e um schema teste no PostgreSQL;
- [x] Criação das tabelas de usuário e de login incluindo as colunas requeridas no desafio;
- [x] Inclusão das constraints 'primary key' e 'foreign key' para relacionar as duas tabelas além da constraint 'unique';
- [x] Inserção de dados genéricos aleatórios nas tabelas;
- [x] Execução da query de consulta utilizando 'join', 'where', 'group by' e 'order by'.
