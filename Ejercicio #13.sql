
-- Primer Ejercicio

drop table libros;

create table libros(
    codigo number(4) not null,
    titulo varchar2(40) not null,
    autor varchar2(20),
    editorial varchar2(15),
    primary key (codigo)
);

insert into libros values (1,'El aleph','Borges','Emece');
insert into libros values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into libros values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');
insert into libros values (3,'Atraves de mi ventana','Marcelina Petro','Buena viida');
insert into libros values (null,'Padre rico padre pobre','Robert Toshinga','Mala Vida');

update libros set codigo = 1 where titulo = 'Martin Fierro';

update libros set codigo = 10 where titulo = 'Martin Fierro';

select uc.table_name, column_name from user_cons_columns ucc
    join user_constraints uc
    on ucc.constraint_name=uc.constraint_name
    where uc.constraint_type='P' and
    uc.table_name='LIBROS';
    
select uc.table_name, column_name from user_cons_columns ucc
    join user_constraints uc
    on ucc.constraint_name=uc.constraint_name
    where uc.constraint_type='P' and
    uc.table_name='libros';
    
    
-- Segundo Ejercicio

drop table alumnos;

create table alumnos(
    legajo varchar2(4) not null,
    documento varchar2(8),
    nombre varchar2(30),
    domicilio varchar2(30),
    primary key(codigo),
    primary key(documento)
);
 
create table alumnos(
    legajo varchar2(4) not null,
    documento varchar2(8),
    nombre varchar2(30),
    domicilio varchar2(30),
    primary key(documento)
);

Describe alumnos;

insert into alumnos values('A233', '22345345', 'Perez Mariana', 'Colon 234');
insert into alumnos values('A567', '23545345', 'Morales Marcos', 'Avellaneda 348');
insert into alumnos values('A568', '23545345', 'Moises Nuñez', 'Avellaneda 748');
insert into alumnos values('A569', null, 'Raquel Rodriguez', 'Santa fe 145');

select uc.table_name, column_name from user_cons_columns ucc
    join user_constraints uc
    on ucc.constraint_name=uc.constraint_name
    where uc.constraint_type='P' and
    uc.table_name='ALUMNOS';





