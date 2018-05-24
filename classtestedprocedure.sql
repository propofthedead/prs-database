
alter procedure QueryOrders 
	@minamt int =500,
	@maxamt int =1000
as
Begin	
	if @maxamtis not null then
	select * from [Order] where amount> @minamt and amount<@maxamt;
	else
	select * from [Order]
		where Amount>@minamt;
end

go
exec QueryOrders 750, 900;