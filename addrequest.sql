create procedure addPurchaseRequest
	@userid int,
	@description nvarchar(100),
	@justice nvarchar(255),
	@delievery nvarchar(25),
	@status nvarchar(10),
	@total decimal(10,2)
as
begin
	insert into purchaseRequest
	(userId,description,justification,DeliveryMode,status,total)
	values
	(@userid,@description,@justice,@delievery,@status,@total)
end