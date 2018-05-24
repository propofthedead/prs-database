create procedure addproduct
	@vendorId int,
	@partNumber int,
	@name nvarchar(150),
	@price decimal(10,2),
	@unit nvarchar(255),
	@photo nvarchar(255)
as
begin
	insert into products
		(VendorId, partNumber,name,price,unit,photopath)
		values
		(@vendorId,@partNumber,@name,@price,@unit,@photo)
end