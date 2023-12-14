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
