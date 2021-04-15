
-- Primer Ejercicio

drop table visitantes;

create table visitantes(
    nombre varchar2(30),
    edad number(2),
    sexo char(1) default 'f',
    domicilio varchar2(30),
    ciudad varchar2(20) default 'Cordoba',
    telefono varchar(11),
    mail varchar(30) default 'no tiene',
    montocompra number (6,2)
);
 
select column_name, nullable, data_default from user_tab_columns where TABLE_NAME = 'VISITANTES';

insert into visitantes (domicilio,ciudad,telefono,mail,montocompra) values ('Colon 123','Cordoba','4334455','juanlopez@hotmail.com',59.80);
insert into visitantes (nombre,edad,sexo,telefono,mail,montocompra) values ('Marcos Torres',29,'m','4112233','marcostorres@hotmail.com',60);
insert into visitantes (nombre,edad,sexo,domicilio,ciudad) values ('Susana Molina',43,'f','Bulnes 345','Carlos Paz');

select *from visitantes;

insert into visitantes values ('Margarita Taveras', 18, default, 'Domicilio 92',default, '456232', default, default);

select *from visitantes where nombre = 'Marcela Morales';


-- Segundo Ejercicio 

Drop table prestamos;

create table prestamos(
    titulo varchar2(40) not null,
    documento char(8) not null,
    fechaprestamo date not null,
    fechadevolucion date,
    devuelto char(1) default 'n'
);

select column_name, nullable, data_default from user_tab_columns where TABLE_NAME = 'PRESTAMOS';

insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion) values ('Atraves de mi ventana','65489551','15/12/2018','18/12/2018');
insert into prestamos (titulo,documento,fechaprestamo) values ('Don king Kong','98456789','19/02/2020');

select *from prestamos;

insert into prestamos values('Libro de Matematica','6665489','11/10/2019',default,default);

select *from prestamos;

insert into prestamos values('Mapa del Tesoro',default,'09/09/2016','06/10/2016','s');

