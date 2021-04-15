
-- Primer Ejercicio

drop table cuentas;

create table cuentas(
    numero number(4) not null,
    documento char(8),
    nombre varchar2(30),
    saldo number(8,2),
    primary key (numero)
 );
 
insert into cuentas values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas values('2234','27888999','Juan Lopez',-250000);
insert into cuentas values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas values('3346','32111222','Susana Molina',1000);
  
select *from cuentas where saldo < 4000;

select numero, saldo from cuentas where nombre = 'Juan Lopez';

select *from cuentas where saldo < 0;

select *from cuentas where numero >= 3000;


-- Segundo Ejercicio

drop table empleados;

create table empleados(
    nombre varchar2(30),
    documento char(8),
    sexo char(1),
    domicilio varchar2(30),
    sueldobasico number(7,2),
    cantidadhijos number(2)
 );
 
insert into empleados values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into empleados values ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into empleados values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

insert into empleados values ('Milagros Sepulveda','27845126','f','Urquiza 129',80000.7860,3);
insert into empleados values ('Carolina Argenia','25687547','f','Avenida 129', 85078984, 3);

select *from empleados where sueldobasico <= 900;

select *from empleados where cantidadhijos > 0;

