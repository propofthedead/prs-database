alter procedure CustumerByStateSorted
	@State nvarchar(2) ='OH'
as
Begin
	select * from Customer where state =@State
	order by City;
End
go 
exec CustumerByStateSorted ;
go