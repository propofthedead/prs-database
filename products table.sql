drop table products 

create table products
(
	Id int not null identity(1,1) primary key,
	VendorId int not null foreign key references vendor(id),
	partNumber nvarchar(50) not null,
	name nvarchar(150) not null,
	price decimal (10,2) not null,
	unit nvarchar(25),
	photopath nvarchar(255),
	active bit not null default 1
);