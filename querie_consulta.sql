select l.user_id, l.usuario, u.nome, u.sobrenome, u.login, max(l.created_date)
from teste1."TB_LOGIN_IPS" l
inner join teste1."TB_USERS" u
on u.id = l.user_id
where origem_ip = 'G'
group by l.user_id, l.usuario, u.nome, u.sobrenome, u.login
order by max(l.created_date);
