insert into tbl_Estado(Nome, Sigla) values();

insert into tbl_Cidade(Nome, id_estado) values('Osasco', 25);

insert into tbl_Bairro(Nome, id_cidade) values('Novo Osasco', 1);

insert into tbl_Endereco(Logradouro, CEP, Numero, Complemento, id_bairro) values('Via tranversal Sul', '12345-678', 145, null, 2);

insert into tbl_Usuario(Nome, CPF, Email, Senha, RG, Genero, DataNascimento, Telefone, DDD, id_Endereco) values();

insert into tbl_Pet(Nome, DataNascimento, Foto, NumeroMicroship, id_sexo, id_Tamanho, id_Raca, id_Nivel_Agressividade, id_Tutor) values();

select * from tbl_Estado;

select * from tbl_Cidade;

select * from tbl_Bairro;

select * from tbl_Endereco;

select id from tbl_Usuario where email = '' and Senha = md5('');

insert into tbl_Sexo(Nome) values('Macho'), ('Fêmea'), ('Ginandromorfo');

insert into tbl_Tamanho(Nome, Significado) values
								('Mini', 'Muito pequeno em comparação a outros espécies'), 
								('Pequeno', 'Pequeno em comparação a outros espécies'), 
                                ('Mediano', 'Estão na média em comparação a outros espécies'), 
                                ('Grande', 'Grandes em comparação a outros espécies'),
                                ('Gigante', 'Gigante em comparação a outros espécies');
					
insert into tbl_Nivel_Agressividade(Nivel) values('Alto'), ('Baixo'), ('Médio'), ('Super alto'), ('Super baixo');

insert into tbl_Nivel(Nivel) values('Primária'), ('Secundária'), ('Terciária'), ('Complementares');

insert into tbl_Especie(Nome) values('Cachorro'), ('Gato'), ('Canário'), ('Porquinho da índia'), ('Peixe'), ('Coelho'),
									('Furão'), ('Hamster'), ('Papagaio'), ('Cobra'), ('Tartaruga'), ('Jabuti'), ('Lagarto');
                                    
insert into tbl_Raca(Nome, id_Especie) values
										('Lhasa Apso', 1), ('Pug', 1), ('Shih Tzu', 1), ('Buldogue', 1), ('Rottweiler', 1),
                                        ('Persa', 2), ('Siamês', 2), ('Maine coon', 2), ('Angorá', 2), ('Radgoll', 2),
                                        ('Saí-canário', 3), ('Canário-andino-negro', 3), ('Canário-da-terra-verdadeiro',  3), ('Canário-do-amazonas', 3), ('Canário-do-brejo', 3),
                                        ('Inglês', 4), ('Peruano', 4), ('Abissínio', 4), ('Alpaca', 4), ('Ridgeback', 4),
                                        ('Peixe dourado', 5), ('Peixe tetra', 5), ('Betta', 5), ('Mato grosso', 5), ('Kinguio', 5),
                                        ('Rex', 6), ('Holland Lop', 6), ('Cabeça de Leão', 6), ('Angorá Inglês', 6), ('Anão Holandês', 6),
                                        ('Sable', 7), ('Sable preto', 7), ('Champagne', 7), ('Chocolate', 7), ('Canela', 7),
                                        ('Hamster sírio', 8), ('Hamster chinês', 8), ('Hamster anão russo', 8), ('Hamster Roborovski', 8), ('Hamster anão de Campbell', 8),
                                        ('Papagaio-do-mangue', 9), ('Papagaio-da-várzea', 9), ('Papagaio-campeiro ', 9), ('Papagaio-de-bochecha-azul', 9), ('Papagaio-diadema', 9),
                                        ('Jiboia', 10), ('Corn Snake', 10), ('Cobra Real Californiana', 10), ('Cobra Falsa Coral', 10), ('Cobra Papagaio', 10),
                                        ('Tartaruga orelha vermelha', 11), ('Tartaruga pintada', 11), ('Tartaruga-da-madeira', 11), ('Tartaruga-russa', 11), ('Tartaruga-tigre-d’água', 11),
                                        ('Jabuti-tinga', 12), ('Jabuti-piranga', 12),
                                        ('Iguana Verde', 13), ('Lagarto de língua azul', 13), ('Dragão Barbudo', 13), ('Leopard Gecko', 13);

insert into tbl_Cor(Cor) values('Branco'), ('Preto'), ('Marrom'), ('Verde'), ('Marrom'), ('Amarelo'), ('Dourado'), ('Castanho'), ('Cinza'),
								('Roxo'), ('Cinza escuro'), ('Verde amarelado'), ('Vermelho'), ('Salmão'), ('Laranja'), ('Cinza clara'), ('Verde azulado'), ('Verde musgo');

insert into tbl_Pet_Cor(id_Pet, id_Cor, id_Nivel) values();
													

select tbl_Raca.Nome as Raca, Tbl_Especie.Nome as 'Raça' 
		from tbl_Raca
			inner join tbl_Especie
				on tbl_Raca.id_Especie = tbl_Especie.id
					order by tbl_Raca.id_Especie asc, tbl_Raca.Nome asc;

insert into tbl_Pet(Nome, DataNascimento, Foto, NumeroMicroship, Peso, Altura, id_Sexo, id_Tamanho, id_Raca, id_Nivel_Agressividade, id_Tutor) 
						values();

select * from vwAllPets;

create table tbl_Pet(
	id int not null auto_increment primary key,  
    Nome varchar(50) not null,
    DataNascimento date,
    Foto text,
    NumeroMicroship varchar(20), 
    Peso double not null,
	Altura float,
    
	id_Sexo int not null,
    constraint  fk_Sexo_Pet
		foreign key(id_Sexo)
		references tbl_Sexo(id),
        
	id_Tamanho int not null,
    constraint  fk_Tamanho_Pet
		foreign key(id_Tamanho)
		references tbl_Tamanho(id),

	id_Raca int not null,
    constraint  fk_Raca_Pet
		foreign key(id_Raca)
		references tbl_Raca(id),
        
	id_Nivel_Agressividade int not null,
    constraint  fk_Nivel_Agressividade_Pet
		foreign key(id_Nivel_Agressividade)
		references tbl_Nivel_Agressividade(id),
        
	id_Tutor int not null,
    constraint  fk_Tutor_Pet
		foreign key(id_Tutor)
		references tbl_Tutor(id),
    
    unique index(id)	
);



insert into tbl_Estado(Nome, Sigla) values
				# Sudeste
				('São Paulo', 'SP'),
				('Rio de Janeiro', 'RJ'),
				('Minas Gerais', 'MG'),
				('Espírito Santo', 'ES'),
                # Nordeste
				('Bahia', 'BA'),
				('Sergipe', 'SE'),
				('Alagoas', 'AL'),
				('Pernambuco', 'PE'),
				('Paraíba', 'PB'),
				('Rio Grande do Norte', 'RN'),
				('Ceará', 'CE'),
				('Piauí', 'PI'),
				('Maranhão', 'MA'),
                # Norte
				('Tocantins', 'TO'),
				('Amazonas', 'AM'),
				('Pará', 'PA'),
				('Amapá', 'AP'),
				('Roraima', 'RR'),
				('Rondônia', 'RO'),
				('Acre', 'AC'),
                # Centro-Oeste
				('Goiás', 'GO'),
				('Mato Grosso do Sul', 'MS'),
				('Mato Grosso', 'MT'),
				('Distrito Federal', 'DF'),
                # Sul
				('Paraná', 'PR'),
				('Santa Catarina', 'SC'),
				('Rio Grande do Sul', 'RS');



#insert into tbl_Telefone_formato(Nome) values('Celular'), ('Residencial'), ('Comercial');

select * from vwAllTutor;

#Update de endereço com o id do tutor (IN idTutor int, Logradouro varchar(100), CEP varchar(15), Numero int, Complemento varchar(10), id_Bairro int)
call procUpdateEndereco();

#Insert do tutor (Não é necessário colocar o id do email ou do endereco) -- (Nome, CPF, Senha, RG, Foto)
call procInsertTutor();

update tbl_Tutor set 
	 Foto_Perfil = '',
     Foto_Fundo = ''
where id = 'X';







