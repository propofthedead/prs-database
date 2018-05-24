create procedure addRequestLine
	@request int,
	@product int,
	@quanity int
as
begin 
	insert into purchaseRequestLine
	(purchaserequestid,productId,Quantity)
	values
	(@request,@product,@quanity)
end