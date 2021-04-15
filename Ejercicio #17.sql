drop table cuentas;

create table cuentas(
    numero number(10) not null,
    documento char(8) not null,
    nombre varchar2(30),
    saldo number(9,2)
);

insert into cuentas values (111111,'84521365','Carlos Martinez',25500.95);
insert into cuentas (numero,documento,saldo) values (2222222, '28999777', 48750.90);

select *from cuentas;

insert into cuentas (numero,documento,nombre) values (333333,'28999258','Miguel Torres',69854);
insert into cuentas (numero,documento,nombre) values (44444,'65621318');
insert into cuentas (numero,nombre,saldo) values (55555,'Antonio Moreta',90000);

select *from cuentas;