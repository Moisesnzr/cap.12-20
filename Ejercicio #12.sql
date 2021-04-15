
-- Primer Ejercicio

Drop table medicamentos;

Create table medicamentos(
    codigo number(5) not null,
    nombre varchar2(20) not null,
    laboratorio varchar2(20),
    precio number(5,2),
    cantidad number(3,0) not null
);

Describe medicamentos;

Insert into medicamentos values(1,'Sertal gotas',null,null,100);
Insert into medicamentos values(2,'Sertal compuesto',null,8.90,150);
Insert into medicamentos values(3,'Buscapina','Roche',null,200);

Select *from medicamentos;

Insert into medicamentos values(4, 'Acetaminofen','',0,150);
Insert into medicamentos values(5,'', 'Rowe',15.60,200);
Insert into medicamentos values(6, null, 'Rowe',25,120);

Select *from medicamentos where laboratorio is null;

Select *from medicamentos where precio is null;

Select *from medicamentos where precio = 0;

Select *from medicamentos where laboratorio is not null;

Select *from medicamentos where precio != 0;

Select *from medicamentos where precio is not null;

Insert into medicamentos values(5, 'Calmante', ' ', 0.5, 200);

Select *from medicamentos where laboratorio is null;

Select *from medicamentos where laboratorio = ' ';

Select *from medicamentos where laboratorio != ' ';

Select *from medicamentos where laboratorio is not null;


--Segundo Ejercicio

drop table peliculas;

create table peliculas(
    codigo number(4) not null,
    titulo varchar2(40) not null,
    actor varchar2(20),
    duracion number(3)
);

describe peliculas;
 
insert into peliculas values(1,'Mision imposible','Tom Cruise',120);
insert into peliculas values(2,'Harry Potter y la piedra filosofal',null,180);
insert into peliculas values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into peliculas values(0,'Mision imposible 2','',150);
insert into peliculas values(4,'Titanic','L. Di Caprio',220);
insert into peliculas values(5,'Mujer bonita','R. Gere-J. Roberts',0);

select *from peliculas;

insert into peliculas values(6, null,'Willi smit',120);

select *from peliculas where actor is null;

update peliculas set duracion = 120 where duracion is null;

update peliculas set actor = 'Desconocido' where actor is null;

select *from peliculas;

select *from peliculas where actor is null;

update peliculas set duracion = null where duracion=0;

select *from peliculas;

delete from peliculas where duracion is null;

select *from peliculas;