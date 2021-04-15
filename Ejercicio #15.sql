
-- Primer Ejercicio

drop table autos;

create table autos(
    patente char(6),
    marca varchar2(20),
    modelo char(4),
    precio number(8,2),
    primary key (patente)
);

insert into autos values('ABC123','Fiat 128', '1970', 15000);
insert into autos values('BCD456','Renault 11', '1990', 40000);
insert into autos values('CDE789', 'Peugeot 505', '1990', 80000);
insert into autos values('DEF012', 'Renault Megane', '1998', 95000);

insert into autos values('RIB678', 'Honda Clio', 1990, 50000);

select *from autos;

select *from autos where modelo = '1990';

insert into autos values('CGD3457','Kia 128','2005',40000);
insert into autos values('BCD456','Honda Sivic','2088',800000);


-- Segundo Ejercicio

drop table clientes;

create table clientes(
    documento char(8) not null,
    apellido varchar2(20),
    nombre varchar2(20),
    domicilio varchar2(30),
    telefono varchar2 (11)
);

insert into clientes values('22333444','Perez','Juan','Sarmiento 980','4223344');
insert into clientes values('23444555','Perez','Ana','Colon 234',null);
insert into clientes values('30444555','Garcia','Luciana','Caseros 634',null);

insert into clientes values('48796465', 'Almanzar', 'Pablo', 'Valle 458', '8093254541258');
insert into clientes values('45875896245', 'De la Cruz', 'Josue', 'Los frailes 158', '803107158');
insert into clientes values('78596465',Perez, 'Carlos', 'Villa linda 553', '8495874125');
  
select *from clientes where apellido = 'Perez';


  