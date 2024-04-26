subroutine s1
integer type(2)
type(2)=2
if (type(2)/=2) print *,1
end
call s1
print *,'pass'
end

