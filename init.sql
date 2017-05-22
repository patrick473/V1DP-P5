/*CREATE TABLE database_name.table_name(
   column1 datatype  PRIMARY KEY(one or more columns),
   column2 datatype,
   column3 datatype,
   .....
   columnN datatype,
);*/

create table genre(
    genreId integer  not null,
    genreNaam text not null,
    genreOmschrijving text,
    primary key(genreNaam)

);

create table film(

    filmID integer primary key not null,
    naam text not null,
    genre text not null,
    uitgebrachtOp integer not null,
    kosten real not null,
    filmOmschrijving text,
    foreign key(genre) references genre(genreNaam)

);


create table staf(

    stafID integer Primary Key not null,
    Naam text not null,

);
--FOREIGN KEY(trackartist) REFERENCES artist(artistid)

create table StafBijFilm(
    filmID integer primary key not null,
    stafID integer primary key not null,
    rol text not null,
    foreign key(filmID) references film(filmID),
    foreign key(stafID) references staf(stafID)
);
