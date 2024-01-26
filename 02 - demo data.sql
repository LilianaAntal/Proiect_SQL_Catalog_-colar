insert into [dbo].[Materii] (id_materie, Nume_materie, id_profesor)
values (1, N'Limba și literatura română',1),
	   (2, N'Matematică',3),
	   (3, N'Geografie',4),
	   (4, N'Biologie',2),
	   (5, N'Istorie',10),
	   (6, N'Educație fizică',9),
	   (7, N'Religie',8),
	   (8, N'Fizică',7),
	   (9, N'Informatică T.I.C.',5), -- TIC = Tehnologia Informației și Comunicării 
	   (10,N'Limba engleză',11);

insert into [dbo].[Profesori] (id_profesor, id_materie, Nume, Prenume)
values (1,1, N'Bercari', N'Rodica'),
	   (2,1, N'Pop', N'Aurel'),
	   (3,2, N'Stăncescu', N'Lidia'),
	   (4,2, N'Atanasiu', N'Corina'),
	   (5,3, N'Cristache', N'Iulian'),
	   (6,4, N'Iliescu', N'Dragoș'),
	   (7,5, N'Popescu', N'Bogdan'),
	   (8,6, N'Stan', N'Raluca'),
	   (9,7, N'David', N'Daniel'),
	   (10,8, N'Jecan', N'Rareș'),
       (11,9, N'Morar', N'Carmen'),
       (12,10, N'Andreica', N'Denisa'),
	   (13,10, N'Crișan', N'Alina');

insert into [dbo].[Clase] (id_clasa, id_profesor, Clasa) -- Fiecare clasa I-IV are un invatator; Fiecare clasa V-VIII are un diriginte
values (1, 3, 'I_A'),
	   (2, 1, 'IV_B'),
       (3, 4, 'V_A'),
       (4, 5, 'V_B'),
       (5, 6, 'VI_C'),
       (6, 7, 'VII_A'),
       (7, 8, 'VII_B'),
       (8, 12, 'VIII_D');

insert into [dbo].[Elevi] (id_elev, id_clasa , Nume ,Prenume, Data_nasterii)
values (1, 1, N'Ciobanu', N'Simona', '2016-10-13'),
	   (2, 1, N'Popescu', N'Andra', '2015-10-20'),
       (3, 2, N'Șardu', N'Claudia', '2013-07-27'), 
	   (4, 2, N'Achim', N'Darius', '2014-01-19'), 
	   (5, 2, N'Matei', N'David', '2013-09-08'),
	   (6, 3, N'Chende', N'Carmen', '2012-09-02'), 
	   (7, 3, N'Roșu', N'Ștefan', '2012-12-11'),
	   (8, 3, N'Prisecaru', N'George', '2013-02-05'),
	   (9, 4, N'Iordache', N'Andreea', '2012-08-01'), 
       (10, 4, N'Vereș', N'Sebastian', '2012-11-12'), 
       (11, 4, N'Popovici', N'Marian', '2013-03-04'), 
       (12, 5, N'Boboc', N'Paula', '2011-09-09'), 
       (13, 5, N'Olaru', N'Adrian', '2011-10-11'), 
       (14, 5, N'Ardelean', N'Victor', '2011-03-13'), 
       (15, 6, N'Draghici', N'Cristina', '2010-08-14'), 
       (16, 6, N'Albescu', N'Dan', '2010-11-17'), 
       (17, 6, N'Andron', N'Ilinca', '2011-04-14'), 
       (18, 7, N'Grigorescu', N'Rareș', '2010-09-15'), 
       (19, 7, N'Dan', N'Matei', '2010-10-06'), 
       (20, 7, N'Filip', N'Liliana', '2011-05-10'), 
       (21, 8, N'Pop', N'Ariana', '2009-08-15'), 
       (22, 8, N'Păun', N'Raul', '2009-09-21'), 
       (23, 8, N'Crețu', N'Mihail', '2010-05-07'), 
       (24, 1, N'Mărginean', N'Teodor', '2015-09-07'), 
       (25, 1, N'Lungu', N'Ștefan', '2016-11-16'); 

 insert into [dbo].[Note] (id_nota, Nota, Calificativ)
 values (1,1,null), (2,2,null), (3,3,null), (4,4,null), (5,5,null), 
		(6,6,null), (7,7,null), (8,8,null), (9,9,null), (10,10,null),
		(11,null,'FB'), (12,null,'B'), (13,null,'S'), (14,null,'I');

insert into [dbo].[Catalog] (id_clasa, id_elev, id_materie, id_nota)
values (1,1,1,11),
	   (2,3,1,12),
	   (3,6,2,7),
	   (4,9,2,8),
		(5,12,6,9),
		(1,2,3,11),
		(2,4,6,11),
		(3,8,3,10),
		(4,10,4,9),
		(5,13,5,8),
		(6,16,3,7),
		(6,17,4,10),
		(7,18,5,9),
		(7,19,9,8),
		(8,21,9,7),
		(8,22,9,6),
		(8,23,10,10),
		(3,7,4,9),
		(4,11,2,8),
		(5,14,1,7);