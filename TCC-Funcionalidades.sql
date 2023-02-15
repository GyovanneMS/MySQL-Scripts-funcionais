insert into tbl_Email(Email) values('helloWorld@gmail.com');

insert into tbl_Estado(Nome, Sigla) values();

insert into tbl_Cidade(Nome, id_estado) values();

insert into tbl_Bairro(Nome, id_cidade) values();

insert into tbl_Endereco(Logradouro, CEP, Numero, Complemento, id_bairro) values('Osasco', '06045-666', 999, '32K', 1);

#insert into tbl_Telefone_formato(Nome) values('Celular'), ('Residencial'), ('Comercial');

Insert into tbl_Telefone(DDD, Numero, id_formato) values();

insert into tbl_Tutor(Nome, CPF, Senha, RG, Foto, id_email, id_endereco) values();

select * from vwTutorBD;

#Update de endereço com o id do tutor (IN idTutor int, Logradouro varchar(100), CEP varchar(15), Numero int, Complemento varchar(10), id_Bairro int)
call procUpdateEndereco(21, 'São Paulo', '06045-999', 666, '64K', 1);

#Insert do tutor (Não é necessário colocar o id do email ou do endereco) -- (Nome, CPF, Senha, RG, Foto)
call procInsertTutor();

update tbl_Tutor set 
	 Nome = '',
     CPF = '',
     Senha = md5(md5('')),
     RG = '',
     Foto = ''
where id = 'X';



update tbl_Email set
	Email = ''
where id = 'x';



