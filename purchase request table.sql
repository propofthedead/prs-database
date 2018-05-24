drop table purchaseRequest

create table purchaseRequest
(
	Id int not null identity(1,1) primary key,
	userId int not null foreign key references [user](id),
	description nvarchar(100) not null,
	justification nvarchar(255) not null,
	DeliveryMode nvarchar(25) not null,
	status nvarchar(10) not null default 'new',
	total decimal(10,2) not null default 0,
	active bit not null default 1,
	reasonForRejection nvarchar(100)
);

insert into purchaseRequest
	(userId,description,justification,DeliveryMode)
	values
	(2,'want some games and items','work hard play hard','UPS')

select * from purchaseRequest