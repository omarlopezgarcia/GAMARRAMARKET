/*DML: DATA MANIPULATION LANGUAGE*/
ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';

insert into PERSONA(DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER) values
('77889955','Alberto','Solano Pariona','alberto.pariona@empresa.com','998456323','V','10/02/1970');
insert into PERSONA(DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER) values
('45781233','Alicia','García Campos','','','C','20/03/1980');
insert into PERSONA(DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER) values
('15487922','Juana','Ávila Chumpitaz','juana.avila@gmail.com','923568741','C','06/06/1986');

select * from persona;

update PERSONA
    set APEPER = 'Méndez Vera',
        EMAPER = 'alicia.mendez@gmail.com'
    where NOMPER = 'Alicia' and APEPER = 'García Campos';

select * from persona;

update PERSONA
    set ESTPER = 'I'
    where DNIPER = '15487922';

select * from persona;

delete from persona
where NOMPER = 'Juana' and APEPER = 'Ávila Chumpitaz';

select * from persona;

delete from persona;

select * from persona;

/*TRANSACTIONS*/

insert into PERSONA (DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER) values 
    ('15258564','Brunela','Tarazona Guerra','brunela.tarazona@gmail.com','986525877','C','06/06/1990');
COMMIT;

delete from persona
where IDPER = 5;

rollback;

insert into PERSONA (DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER) values
    ('74142585','Pedro Alberto ','Candela Valenzuela',' pedro.candela@gmail.com','94148525','C','30/06/1995');

savepoint a;

insert into PERSONA (DNIPER, NOMPER, APEPER, EMAPER, CELPER, TIPPER, FECNACPER) values
    ('49985471','Oscar César',' Quiroz Zavala','null','988223145','C','12/10/2004');

savepoint b;

rollback to a;

/*ACTIVITY*/
/*nuevo sql*/