--Afisati toate materiile cu profesorii aferenti: 
select Materii.Nume_materie as Materie, Profesori.Nume, Profesori.Prenume
from Materii 
join Profesori
	 on Profesori.id_materie = Materii.id_materie
order by Materie;

--Afisati toate clasele cu invatatorul / dirigentele alocat:
--Invatator pt clasele I-IV
--Diriginte pt clasele V-VIII
select Clase.Clasa, Profesori.Nume, Profesori.Prenume
from Clase
join Profesori
	on Clase.id_profesor = Profesori.id_profesor;

--Afisati numele si prenumele tuturor elevilor (grupati pe clase) si clasele aferente:
select distinct Clase.Clasa, Elevi.Nume, Elevi.Prenume 
from Elevi
join Clase
	on Elevi.id_clasa = Clase.id_clasa;

--Afisati elevii clasei I_A:
select Clase.Clasa, Elevi.Nume, Elevi.Prenume 
from Elevi
join Clase
	on Elevi.id_clasa = Clase.id_clasa
where Clase.clasa = 'I_A';

--Afisarea eleviilor unei clase date:
go
create or alter procedure usp_AfisareEleviClasa
@numar_clasa varchar(10)
as
begin
	select Clase.Clasa, Elevi.Nume, Elevi.Prenume 
	from Elevi
	join Clase
		on Elevi.id_clasa = Clase.id_clasa
	where Clase.clasa = @numar_clasa;
end;
go
execute usp_AfisareEleviClasa @numar_clasa = 'V_B';

--Afisare catalog (toti elevii din toate clasele cu notele aferente):
select Clase.Clasa, Elevi.Nume, Elevi.Prenume, Materii.Nume_materie, 
	   'Nota/Calificativ' = case 
								when [Catalog].id_nota <=10 
									then cast(Note.Nota as varchar(2))
								else Note.Calificativ
				            end
from [Catalog]
join Clase
	on [Catalog].id_clasa = Clase.id_clasa
join Elevi
	on [Catalog].id_elev = Elevi.id_elev
join Materii
	on [Catalog].id_materie = Materii.id_materie
join Note
	on [Catalog].id_nota = Note.id_nota;

--Afisarea elevilor (ordonati dupa numele clasei) cu nota la biologie:
select Clase.Clasa, Elevi.Nume, Elevi.Prenume, Materii.Nume_materie, 
	   'Nota/Calificativ' = case 
								when [Catalog].id_nota <=10 
									then cast(Note.Nota as varchar(2))
								else Note.Calificativ
				            end
from [Catalog]
join Clase
	on [Catalog].id_clasa = Clase.id_clasa
join Elevi
	on [Catalog].id_elev = Elevi.id_elev
join Materii
	on [Catalog].id_materie = Materii.id_materie
join Note
	on [Catalog].id_nota = Note.id_nota
where Materii.Nume_materie = 'Biologie'
order by Clase.Clasa;

--Afisarea notelor elevilor unei clase VI_C, elevii sa fie ordonati alfabetic:
select Clase.Clasa, Elevi.Nume, Elevi.Prenume, Materii.Nume_materie, 
	   'Nota/Calificativ' = case 
								when [Catalog].id_nota <=10 
									then cast(Note.Nota as varchar(2))
								else Note.Calificativ
				            end
from [Catalog]
join Clase
	on [Catalog].id_clasa = Clase.id_clasa
join Elevi
	on [Catalog].id_elev = Elevi.id_elev
join Materii
	on [Catalog].id_materie = Materii.id_materie
join Note
	on [Catalog].id_nota = Note.id_nota
where Clase.Clasa = 'VI_C'
order by Elevi.Nume, Elevi.Prenume;