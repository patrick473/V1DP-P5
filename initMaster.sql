--create's
 create table genre(
    genreID integer  not null,
    genreNaam text not null,
    genreOmschrijving text,
    primary key(genreId)

);

create table film(

    filmID integer primary key not null,
    naam text not null,
    genre integer not null,
    uitgebrachtIn integer not null,
    kosten real not null,
    filmOmschrijving text,
    foreign key(genre) references genre(genreId)

);

create table staf(

    stafID integer Primary Key not null,
    Naam text not null

);

create table StafBijFilm(
    filmID integer  not null,
    stafID integer  not null,
    rol text not null,
    foreign key(filmID) references film(filmID),
    foreign key(stafID) references staf(stafID),
    primary key (filmID,stafID)
);

--inserts

insert into genre (genreId, genreNaam)
values (1, 'Thriller');
insert into genre (genreId, genreNaam)
values (2, 'Actie');
insert into genre (genreId, genreNaam)
values (3, 'Avontuur');
insert into genre (genreId, genreNaam)
values (4, 'Drama');
insert into genre (genreId, genreNaam)
values (5, 'Gangster');
insert into genre (genreId, genreNaam)
values (6, 'Historisch');
insert into genre (genreId, genreNaam)
values (7, 'Horror');
insert into genre (genreId, genreNaam)
values (8, 'Komedie');
insert into genre (genreId, genreNaam)
values (9, 'Melo');
insert into genre (genreId, genreNaam)
values (10, 'Misdaad');
insert into genre (genreId, genreNaam)
values (11, 'Musical');
insert into genre (genreId, genreNaam)
values (12, 'Oorlog');
insert into genre (genreId, genreNaam)
values (13, 'Porno');
insert into genre (genreId, genreNaam)
values (14, 'Kinderfilm');
insert into genre (genreId, genreNaam)
values (15, 'Romantisch');
insert into genre (genreId, genreNaam)
values (16, 'Sciencefiction');
insert into genre (genreId, genreNaam)
values(17, 'Western');
insert into film (filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values (1, 'Pipilankaus en de zeven dwergen', 1, 2004, 7.50, 'spannende thriller over een prinsis die in het bos gevonden wordt door zeven dwergen');
insert into film (filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(2, 'David leert schrijven', 14, 1999, 7.00, 'David kan nog niet het woordje database schrijven en dus wordt dit een grote uitdaging om te leren');
insert into  film(filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(3, 'het verwdijnen van Harambe', 10, 2016, 10.00, 'Harambe was een dag vrolijk aan het spelen in de dierentuin en de volgende dag was hij verdwenen');
insert into film (filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(4, 'De avonturen van Henk', 3, 2015, 7.50, 'Henk gelooft in het vliegend spaghettie monster en zal alles doen om het bestaan hiervan te bewijzen');
insert into film (filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(5, 'Sneeuw witje en de zeven reuzen', 13, 1997, 11.00, 'Sneeuwwitje weet niet wat haar overkomt');
insert into film (filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(6, 'Linux', 7, 1886, 2.00, 'Pietje heeft perongeluk linux geinstalleerd op zijn pc. de gevolgen hiervan zijn desastreus');
insert into film (filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(7, 'Ik ging verkleed als zwarte piet', 10, 2006, 5.00, 'Henk besloot verkleed te gaan als zwarte piet naar de carnavals parade. dit werd echter niet geacepteerd');
insert into film(filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(8, 'Rome Total War', 6, 2005, 6.00, 'Palatipus moet zijn rijk verdediggen voor de wraatzuchtige David');
insert into film(filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(9, 'Matrix voor Dany', 5, 2000, 12.00, 'Dany komt in de matrix terecht en heeft hoge verwachtingen om te vervullen. Echter is Dany een Linux gebruiker');
insert into film(filmID, naam, genre, uitgebrachtOp, kosten, filmOmschrijving)
values(10, 'md5 Hash', 2, 2001, 13.00, 'Edward Snowden wil bewijzen dat md5 hash nogsteeds werkt. om dit te bewijzen gebruikt hij natuurlijk php');
insert into staf (stafid,naam)
values (1,'steven siegel');
insert into staf (stafid,naam)
values( 2,'M. Night Shyamalan');
insert into staf (stafid,naam)
values(3 ,'Nagisa Oshima');
insert into staf (stafid,naam)
values( 4,'Hans bieter');
insert into staf (stafid,naam)
values( 5,'James Mangold');
insert into staf (stafid,naam)
values(6 ,'Fernando Meireilles');
insert into staf (stafid,naam)
values( 7,'Jiri Menzel');
insert into staf (stafid,naam)
values(8 ,'Hans Kazan');
insert into staf (stafid,naam)
values( 9,'Sergej Eisenstein');
insert into staf (stafid,naam)
values(10 ,'Han van Gelder');
insert into staf (stafid,naam)
values( 11,'Mel Gibson');
insert into staf (stafid,naam)
values(12 ,'Herman van der horst');
insert into staf (stafid,naam)
values(13 ,'Hans herbots');
insert into staf (stafid,naam)
values(14 ,'Joris Ivens');
insert into staf (stafid,naam)
values(15 ,'Li Jun');
insert into staf (stafid,naam)
values(16 ,'Alexander Graaf von Kolowrat-Krakowsky');
insert into staf (stafid,naam)
values(17 ,'Krzyszstof Kieslowski');
insert into staf (stafid,naam)
values( 18,'Hans Nieter');
insert into StafBijFilm(filmID,stafID,rol)
values(  2,  7,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  3,  6,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  4,  5,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  9,  4,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  7,  1,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  5,  1,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  1,  2,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  1,  9,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  2,  8,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  10,  3,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  9,  6,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  7,  4,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values( 6 ,  18,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  7,  17,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  5,  16,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  1,  15,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  2,  14,'Acteur');

insert into StafBijFilm(filmID,stafID,rol)
values( 3 ,  13,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  7,  12,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values(  4,  11,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values(  2,  10,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values(  10,  9,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values(  9,  8,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values( 6 ,  7,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values( 5 , 6 ,'Acteur');
insert into StafBijFilm(filmID,stafID,rol)
values( 1 , 5 ,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values( 2 , 4 ,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values(  3, 3 ,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values( 5 , 2 ,'Regisseur');
insert into StafBijFilm(filmID,stafID,rol)
values( 1 , 1 ,'Regisseur');
