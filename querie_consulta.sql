/*  Na query foi utilizada a função 'max' para trazer o valor máximo da coluna 'created_time' visando recuperar o registro mais recente para cada usuário;
'Join' para unir as duas tabelas;
'Where' para aplicar um filtro, que nesse caso seria recuperar apenas registros em que o IP fosse 'G';
'Group by' para agrupar os registros, já que foi utilizada uma função de agregação;
'Order by' para ordenar por 'created_date' para recuperar os últimos acessos com aquele determinado IP. */

select l.user_id, l.usuario, u.nome, u.sobrenome, u.login, max(l.created_date)
from teste1."TB_LOGIN_IPS" l
inner join teste1."TB_USERS" u
on u.id = l.user_id
where origem_ip = 'G'
group by l.user_id, l.usuario, u.nome, u.sobrenome, u.login
order by max(l.created_date);
