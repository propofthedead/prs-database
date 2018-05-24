create procedure addUser
	@username nvarchar(30),
	@password nvarchar(30),
	@firstname nvarchar(30),
	@lastname nvarchar(30),
	@phone nvarchar(12),
	@email nvarchar(255)
as
begin
	insert into [User]
		(Username,Password,Firstname,Lastname,phone,email)
		values
		(@username,@password,@firstname,@lastname,@phone,@email)
end