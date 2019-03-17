
create table Usuario (
    idUsuario int primary key identity(100,1),
    nome varchar (40),
    Email varchar (40),
    telefone varchar(20),
    usuario varchar(40),
    senha varchar(40));

    create table Alerta (
    idAlerta int primary key identity(1000,1000),
    atenção float,
    emergencia float,
    urgencia float
    );

    create table Historico (
    idHistorico int primary key identity(1,1),
    Temp_min float,
    Temp_Max float,
    Data_hora timestamp
    );

    create table His_Alert (
    Id_HisAlerta int primary key identity(100,10),
   tempMaxima float,
   tempMinima float,
   dataAlert date,
   tempoAlert  time);


    select ha.*, h.Temp_max, Data_hora, a.*  from His_Alert as ha, Historico as h, Alerta as a  where fk_HisAtividade = idHistorico and
     fkAlerta = idAlerta;


