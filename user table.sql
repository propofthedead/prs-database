drop table user
create table user
	(
		Id int not null identity(1,1) primary key,
		Username nvarchar(30) not null unique,
		Password nvarchar(30) not null ,
		Firstname nvarchar(30) not null,
		Lastname nvarchar(30) not null,
		phone nvarchar(12) not null,
		email nvarchar (255)  not null unique,
		IsReviewer bit not null default 1,
		IsAdmin bit not null default 0,
		Active bit  not null default 1
	);