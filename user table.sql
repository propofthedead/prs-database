use master;
go
drop database if exists prs;
go 
create database prs;
go 
use prs;
go
drop table [User]
create table [User]
	(
		Id int not null identity(1,1) primary key,
		Username nvarchar(30) not null unique,
		Password nvarchar(30) not null ,
		Firstname nvarchar(30) not null,
		Lastname nvarchar(30) not null,
		phone nvarchar(12) not null,
		email nvarchar (255)  not null unique,
		IsReviewer bit not null default 0,
		IsAdmin bit not null default 0,
		Active bit  not null default 1
	);
	go
		create unique index uix_username on [user](Username);
	go
insert into [User]
	(Username,Password,Firstname,Lastname,phone,email, IsAdmin,IsReviewer)
values
	('propofthedead','Helper108*','Foster','Stulen','513-459-5655','camodude5@yahoo.com',1,0)

	insert into [User]
	(Username,Password,Firstname,Lastname,phone,email)
values
	('rararasputin','drowned','Rasputin','Russia','513-961,6565','rarara@aol.com')
insert into [User]
	(Username,Password,Firstname,Lastname,phone,email)
values
	('satan666','lucifer','Lucifier','Angel','666-666-1234', 'satanrulez@hell.com')
insert into [User]
	(Username,Password,Firstname,Lastname,phone,email)
values
	('traceOw','itsinthebag','Lena','Oxton','514-564-4865','heyaimbritish@overwatch.com')
insert into [User]
	(Username,Password,Firstname,Lastname,phone,email,IsAdmin,IsReviewer)
values
	('bush420','blazeit','George','Bush','111-111-1111','highpresident@whitehouse.yournotsupposetoknow',0,1)

insert into [User]
	(Username,Password,Firstname,Lastname,phone,email,IsAdmin,IsReviewer)
values
	('maxgreg','training','Greg','Doud','513-487-9545','gregdoud@maxTrain.com',1,0)

	select * from [User]