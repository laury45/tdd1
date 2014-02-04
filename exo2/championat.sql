drop table Participe;
drop table Rencontre;
drop table Journee;
drop table Personne;
drop table Equipe;
drop table Parametres;

create table Parametres(
       NomChampionnat Varchar2(30),
       Sport Varchar2(30),
       Saison VarChar2(9),
       nbPtsGagne number(1),
       nbPtsPerdu number(1),
       nbPtsNul number(1)
);

create table Equipe(
       IdEq Number(2) primary key,
       NomEq Varchar2(30),
       VilleEq Varchar2(30)
);

create table Personne(
       idPers number(4) primary key,
       nomPers Varchar2(30),
       prenomPers Varchar2(30),
       idEq number(2) references Equipe(idEq)
);

create table Journee(
       numJo number(2) primary key,
       DateJo date
);

create table Rencontre(
       idRen number(2) primary key,
       numJo number(2),
       idEq1 number(2),
       idEq2 number(2),
       score1 number(4),
       score2 number(4),
       dateRe date,
       unique (numJo,idEq1),
       unique (numJo,idEq2),
       foreign key (numJo) references Journee(numJo),
       foreign key (idEq1) references Equipe(idEq),
       foreign key (idEq2) references Equipe(idEq)
);

create table Participe(
       idRen number(2) references Rencontre(idRen),
       idPers number(4) references Personne(idPers),
       nbPoints number(3),
       primary key (idPers,idRen)
);


insert into Parametres values('Championat Region Centre',
       'Basket sur glace',
       '2013-2014',3,0,1);


insert into Equipe values (1,'PANTHERES','Orleans');
insert into Equipe values (2,'TIGRES','Tours');
insert into Equipe values (3,'KANGOUROUS','Chartres');
insert into Equipe values (4,'DAUPHINS','Chateauroux');
insert into Equipe values (5,'REQUINS','Bourges');
insert into Equipe values (6,'COYOTES','Blois');

insert into Personne values(11,'DORLEANS1','JEAN',1);
insert into Personne values(12,'DORLEANS2','PAUL',1);
insert into Personne values(13,'DORLEANS3','PIERRE',1);
insert into Personne values(14,'DORLEANS4','JULE',1);
insert into Personne values(21,'TOURATOURS1','JEAN',2);
insert into Personne values(22,'TOURATOURS2','PAUL',2);
insert into Personne values(23,'TOURATOURS3','PIERRE',2);
insert into Personne values(24,'TOURATOURS4','JULE',2);
insert into Personne values(31,'CHARTRAIN1','JEAN',3);
insert into Personne values(32,'CHARTRAIN2','PAUL',3);
insert into Personne values(33,'CHARTRAIN3','PIERRE',3);
insert into Personne values(34,'CHARTRAIN4','JULE',3);
insert into Personne values(41,'CHATEAU1','JEAN',4);
insert into Personne values(42,'CHATEAU2','PAUL',4);
insert into Personne values(43,'CHATEAU3','PIERRE',4);
insert into Personne values(44,'CHATEAU4','JULE',4);
insert into Personne values(51,'BOURG1','JEAN',5);
insert into Personne values(52,'BOURG2','PAUL',5);
insert into Personne values(53,'BOURG3','PIERRE',5);
insert into Personne values(54,'BOURG4','JULE',5);
insert into Personne values(61,'BLE1','JEAN',6);
insert into Personne values(62,'BLE2','PAUL',6);
insert into Personne values(63,'BLE3','PIERRE',6);
insert into Personne values(64,'BLE4','JULE',6);


insert into Journee values (1,to_date('08-09-2013','dd-mm-yyyy'));
insert into Journee values (2,to_date('22-09-2013','dd-mm-yyyy'));
insert into Journee values (3,to_date('06-10-2013','dd-mm-yyyy'));
insert into Journee values (4,to_date('20-10-2013','dd-mm-yyyy'));
insert into Journee values (5,to_date('03-11-2013','dd-mm-yyyy'));
insert into Journee values (6,to_date('17-11-2013','dd-mm-yyyy'));
insert into Journee values (7,to_date('12-01-2014','dd-mm-yyyy'));
insert into Journee values (8,to_date('26-01-2014','dd-mm-yyyy'));
insert into Journee values (9,to_date('09-02-2014','dd-mm-yyyy'));
insert into Journee values (10,to_date('23-02-2014','dd-mm-yyyy'));

insert into Rencontre values (1,1,1,2,100,73,to_date('08-09-2013','dd-mm-yyyy'));
insert into Rencontre values (2,1,3,4,85,89,to_date('08-09-2013','dd-mm-yyyy'));
insert into Rencontre values (3,1,5,6,76,75,to_date('08-09-2013','dd-mm-yyyy'));
insert into Rencontre values (4,2,1,3,63,78,to_date('22-09-2013','dd-mm-yyyy'));
insert into Rencontre values (5,2,2,6,74,85,to_date('29-09-2013','dd-mm-yyyy'));
insert into Rencontre values (6,2,4,5,65,99,to_date('22-09-2013','dd-mm-yyyy'));
insert into Rencontre values (7,3,4,1,NULL,NULL,to_date('06-10-2013','dd-mm-yyyy'));
insert into Rencontre values (8,3,2,5,NULL,NULL,to_date('13-10-2013','dd-mm-yyyy'));
insert into Rencontre values (9,3,6,3,NULL,NULL,to_date('06-10-2013','dd-mm-yyyy'));
insert into Rencontre values (10,4,5,1,NULL,NULL,to_date('07-01-2014','dd-mm-yyyy'));
insert into Rencontre values (11,4,6,4,NULL,NULL,to_date('20-10-2013','dd-mm-yyyy'));
insert into Rencontre values (12,4,2,3,NULL,NULL,to_date('20-10-2013','dd-mm-yyyy'));
insert into Rencontre values (13,5,1,6,NULL,NULL,to_date('03-11-2013','dd-mm-yyyy'));
insert into Rencontre values (14,5,2,4,NULL,NULL,to_date('03-11-2013','dd-mm-yyyy'));
insert into Rencontre values (15,5,5,3,NULL,NULL,to_date('03-11-2013','dd-mm-yyyy'));
insert into Rencontre values (16,6,2,1,NULL,NULL,to_date('17-11-2013','dd-mm-yyyy'));
insert into Rencontre values (17,6,4,3,NULL,NULL,to_date('16-02-2014','dd-mm-yyyy'));
insert into Rencontre values (18,6,6,5,NULL,NULL,to_date('17-11-2013','dd-mm-yyyy'));
insert into Rencontre values (19,7,3,1,NULL,NULL,to_date('12-01-2014','dd-mm-yyyy'));
insert into Rencontre values (20,7,6,2,NULL,NULL,to_date('12-01-2014','dd-mm-yyyy'));
insert into Rencontre values (21,7,5,4,NULL,NULL,to_date('12-01-2014','dd-mm-yyyy'));
insert into Rencontre values (22,8,1,4,NULL,NULL,to_date('26-01-2014','dd-mm-yyyy'));
insert into Rencontre values (23,8,5,2,NULL,NULL,to_d51ate('26-01-2014','dd-mm-yyyy'));
insert into Rencontre values (24,8,3,6,NULL,NULL,to_date('26-01-2014','dd-mm-yyyy'));
insert into Rencontre values (25,9,1,5,NULL,NULL,to_date('09-02-2014','dd-mm-yyyy'));
insert into Rencontre values (26,9,4,6,NULL,NULL,to_date('09-02-2014','dd-mm-yyyy'));
insert into Rencontre values (27,9,3,2,NULL,NULL,to_date('09-02-2014','dd-mm-yyyy'));
insert into Rencontre values (28,10,6,1,NULL,NULL,to_date('23-02-2014','dd-mm-yyyy'));
insert into Rencontre values (29,10,4,2,NULL,NULL,to_date('23-02-2014','dd-mm-yyyy'));
insert into Rencontre values (30,10,3,5,NULL,NULL,to_date('23-02-2014','dd-mm-yyyy'));

-- match 1
insert into Participe values (1,11,40);
insert into Participe values (1,12,20);
insert into Participe values (1,13,40);
insert into Participe values (1,14,0);
insert into Participe values (1,21,40);
insert into Participe values (1,23,20);
insert into Participe values (1,24,13);
-- match 2
insert into Participe values (2,31,40);
insert into Participe values (2,32,40);
insert into Participe values (2,33,5);
insert into Participe values (2,41,40);
insert into Participe values (2,42,30);
insert into Participe values (2,43,5);
insert into Participe values (2,44,14);
-- match 3
insert into Participe values (3,51,20);
insert into Participe values (3,52,36);
insert into Participe values (3,54,20);
insert into Participe values (3,61,20);
insert into Participe values (3,62,30);
insert into Participe values (3,63,25);
-- match 4
insert into Participe values (4,11,10);
insert into Participe values (4,12,20);
insert into Participe values (4,14,33);
insert into Participe values (4,31,40);
insert into Participe values (4,33,20);
insert into Participe values (4,34,18);
-- match 5
insert into Participe values (5,21,30);
insert into Participe values (5,22,40);
insert into Participe values (5,23,4);
insert into Participe values (5,61,40);
insert into Participe values (5,62,20);
insert into Participe values (5,63,15);
insert into Participe values (5,64,10);
-- match 6
insert into Participe values (6,51,30);
insert into Participe values (6,52,36);
insert into Participe values (6,53,33);
insert into Participe values (6,41,20);
insert into Participe values (6,42,30);
insert into Participe values (6,43,15);


commit; 
