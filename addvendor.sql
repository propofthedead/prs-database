create procedure addVendor
	@code nvarchar(30),
	@name nvarchar(30),
	@address nvarchar(255),
	@city nvarchar(255),
	@state nvarchar(2),
	@zip nvarchar(5),
	@phone nvarchar(12),
	@email nvarchar(255)
as
begin
	insert into vendor	
		(code,name, address,city,state,zip,phone,email)
		values
		(@code,@name,@address,@city,@state,@zip,@phone,@email)
end