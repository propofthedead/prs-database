

declare @vendorId int;
select @vendorId = id from vendor where code ='amaz'

insert into products
(VendorId,partNumber,name,price,unit,photopath,active)
values
(@vendorId,'Echo','Amazon Echo', 99.99,'Dot','adfadsfadfadsfadsf.com',1)
select * from vendor
select * from products

exec addUser 'hotncold','yesandno','katy','perry','513-487-6974','popstart@lala.com'
declare @user int;
select @user=id from [User] where firstname='katy'

exec addPurchaseRequest @user,'want a game','im a pop star','pickup','new',60.00
select * from [User]
select * from purchaseRequest
