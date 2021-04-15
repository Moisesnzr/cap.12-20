
-- Primer Ejercicio

drop table articulos;

create table articulos(
    codigo number(4),
    nombre varchar2(20),
    descripcion varchar2(30),
    precio number(8,2),
    cantidad number(3) default 0,
    primary key (codigo)
);
 
insert into articulos values (101,'impresora','Epson Stylus C45',400.80,20);
insert into articulos values (203,'impresora','Epson Stylus C85',500,30);
insert into articulos values (205,'monitor','Samsung 14',800,10);
insert into articulos values (300,'teclado','ingles Biswal',100,50);

update articulos set precio =  precio + (precio * 0.15);

select *from articulos;

select nombre||' | ' ||descripcion from articulos;

update articulos set cantidad = cantidad - 5 where nombre = 'impresora';

select *from articulos where nombre = 'impresora';

select 'Cod. '||codigo||': '||nombre||' '||descripcion||' $'||precio||' ('||cantidad||')' from articulos;
