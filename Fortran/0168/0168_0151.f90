module m1
contains
subroutine s1(x)
integer,value:: x(2)
x=[1,2]
if (any(x/=[1,2])) print *,101
write(1,*) x
end subroutine
end
use m1
integer:: x(2)
x=[3,4]
call s1(x)
if (any(x/=[3,4])) print *,102
print *,'pass'
end
