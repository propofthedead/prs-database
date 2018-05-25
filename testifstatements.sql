declare @numStudents int;

set @numStudents =10;

if @numStudents >=10 and @numStudents<=20
begin

	print 'There are 10-20 students'
	print 'that is a good number'
end
else
begin
	print 'not 10-20'
	end
print 'the end...'