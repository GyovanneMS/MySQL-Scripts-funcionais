insert into tbl_Estado(Nome, Sigla) values();

insert into tbl_Cidade(Nome, id_estado) values('Osasco', 25);

insert into tbl_Bairro(Nome, id_cidade) values('Novo Osasco', 1);

insert into tbl_Endereco(Logradouro, CEP, Numero, Complemento, id_bairro) values('Via tranversal Sul', '12345-678', 145, null, 2);

insert into tbl_Usuario(Nome, CPF, Email, Senha, RG, Genero, DataNascimento, Telefone, DDD, id_Endereco) values();

insert into tbl_Pet(Nome, DataNascimento, Foto, id_sexo, id_Microship, id_Raca, id_Nivel_Agressividade, id_Tutor) values();

select * from tbl_Estado;

select * from tbl_Cidade;

select * from tbl_Bairro;

select * from tbl_Endereco;

select id from tbl_Usuario where email = '' and Senha = md5('');

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

desc tbl_Tutor;





