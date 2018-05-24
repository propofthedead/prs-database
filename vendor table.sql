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
		create unique index uix_code on vendor(code);
		go

	insert into vendor
		(code, name , address,city,state,zip,phone,email,isPreApproved)
		Values
		('A123456','Amazon','123 amazon dr','Amazon','KY','65421','513-348-1234','amazonian@amazon.com',1)

	insert into vendor
		(code, name , address,city,state,zip,phone,email)
		values
		('A654321','Best Buy','4587 Waterstone ct','Mason','OH','45040','241-456-9745','bestbuy@bestie.com')
