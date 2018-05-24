drop table vendor

create table vendor
	(
		ID int not null identity(1,1) primary key,
		code nvarchar(30) not null,
		name nvarchar(255) not null,
		address nvarchar(255) not null,
		city nvarchar(255) not null,
		state nvarchar(2) not null,
		zip nvarchar(5) not null,
		phone nvarchar(11) not null,
		email nvarchar (255) not null,
		isPreApproved bit not null default 0,
		Active bit not null default 1
	);
		go
		create unique index uix_code on [vendor](code);