subroutine s1
integer,parameter ::array(2,1)=1
integer,parameter:: x(2)=sum(array,2)
if (x(1)/=1 .or. x(2)/=1) print *,101
end
call s1
print *,'pass'
end
