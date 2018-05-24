drop table purchaseRequestLineItem

create table purchaseRequestLineItem
(
	Id int  not null identity(1,1) primary key,
	purchaserequestid int not null foreign key references [purchaseRequest](id),
	productId int not null foreign key references [products](id),
	Quantity int not null default 1,
	active bit not null default 1
);

insert into purchaseRequestLineItem
	(purchaserequestid,productId,Quantity)
	values
	(1,2,3)

	select * from purchaseRequestLineItem