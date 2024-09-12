module m1
integer,private::a=1
integer::b=2
end
subroutine s1
use m1
if (b/=2) print *,1
end
call s1
print *,'pass'
end
