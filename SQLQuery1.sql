USE Gufi_Tarde 
--DQL Linguagens de consulta de DADOS
SELECT NomeUsuario, Email, IdTipoUsuario, DataNascimento, Genero FROM Usuario;

SELECT CNPJ ,NomeFantasia ,Endereco FROM Instituicao;

SELECT TituloTipoEvento FROM TipoEvento;

SELECT NomeEvento, IdTipoEvento, DataEvento, AcessoLivre, Descricao, IdInstituicao FROM Evento;

SELECT NomeEvento, IdTipoEvento, DataEvento, AcessoLivre, Descricao, IdInstituicao FROM Evento
where AcessoLivre = 1 ;

SELECT Evento.NomeEvento, Evento.DataEvento, 
CASE WHEN [AcessoLivre]=0 THEN 'Privado' WHEN [AcessoLivre]=1 then 'Público' end as AcessoLivre, 
Evento.Descricao,
Instituicao.NomeFantasia, Instituicao.Endereco, Instituicao.CNPJ,
Usuario.DataNascimento, Usuario.Genero, Usuario.NomeUsuario, Usuario.Email, Usuario.Senha
from Evento
inner join Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
inner join Presenca ON Presenca.IdEvento = Evento.IdEvento
inner join Usuario ON Usuario.IdUsuario = Presenca.IdUsuario
where Usuario.IdUsuario = 2


SELECT Evento.NomeEvento, Evento.DataEvento, 
CASE WHEN [AcessoLivre]=0 THEN 'Privado' WHEN [AcessoLivre]=1 then 'Público' end as AcessoLivre, 
Evento.Descricao,
Instituicao.NomeFantasia, Instituicao.Endereco, Instituicao.CNPJ,
Usuario.DataNascimento, Usuario.Genero, Usuario.NomeUsuario, Usuario.Email, Usuario.Senha
from Evento
inner join Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
inner join Presenca ON Presenca.IdEvento = Evento.IdEvento
inner join Usuario ON Usuario.IdUsuario = Presenca.IdUsuario
where Presenca.Situacao = 'CONFIRMADA'  and Evento.NomeEvento like '%banco%';

select * from Evento



