DROP TABLE IF EXISTS dbo.Categoria
go
CREATE TABLE Categoria
(
    categoriaid   int IDENTITY (1, 1) NOT NULL primary key,
    descricao     varchar(255)        NOT NULL,
    subcategoria varchar(255)        NOT NULL,

);
go

DROP TABLE IF EXISTS dbo.Produtos
go
CREATE TABLE Produtos
(
    produtoid   int IDENTITY (1, 1) NOT NULL primary key,
    nome        varchar(255)        NOT NULL,
    valor       decimal             not null,
    categoriaid int FOREIGN KEY REFERENCES categoria (categoriaid)


);
go

insert into categoria(descricao, subcategoria)
    values ('Eletrodoméstico', 'fogão');

insert into categoria(descricao, subcategoria)
    values ('Eletrodoméstico', 'geladeira');

insert into categoria(descricao, subcategoria)
    values ('celulares', 'Iphone');

insert into Produtos(nome, valor, categoriaid)
    VALUES ('Fogão Atlas 4 Bocas Mônaco Top Glass com Mesa de Vidro e Acendimento Automático Bivolt – Preto', 1000, 1);

insert into Produtos(nome, valor, categoriaid)
    VALUES ('Geladeira Consul Frost Free CRM39AB Duplex com Prateleiras Altura Flex Branca - 340L', 2000, 2);

insert into Produtos(nome, valor, categoriaid)
    VALUES ('Apple iPhone 15 128 GB - Azul', 3000, 3);


select p.nome,p.valor,c.descricao,c.subcategoria from Produtos as p join Categoria as c on p.categoriaid = c.categoriaid