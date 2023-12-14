use Catalog_Scolar;
go

drop table if exists Materii;
go
create table Materii
	(id_materie int primary key not null,
	Nume_materie nvarchar (100),
	id_profesor int not null);
go

drop table if exists Profesori;
go
create table Profesori
	(id_profesor int primary key not null,
	id_materie int not null,
	Nume nvarchar (100),
	Prenume nvarchar (100));
go

drop table if exists Clase;
go
create table Clase
	(id_clasa int primary key not null,
	id_profesor int not null,
	Clasa varchar (10) not null);   -- model: VII_A
go

drop table if exists Elevi;
go
create table Elevi
	(id_elev int primary key not null,
	id_clasa int references Clase(id_clasa) not null,
	Nume nvarchar (100),
	Prenume nvarchar (100),
	Data_nasterii date not null);   -- Data nasterii de form: yyyy-MM-dd
go

drop table if exists Note;
go
create table Note
	(id_nota int primary key not null,
	Nota tinyint,				-- Note: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	Calificativ varchar(15));	-- Calificative: FB – Foarte Bine, B – Bine, S – Suficient, I - Insuficient
go

drop table if exists Catalog;
go
create table Catalog
	(id_clasa int references Clase(id_clasa),
  	 id_elev int references Elevi(id_elev),
	 id_materie int references Materii(id_materie),
	 id_nota int references Note(id_nota));
go