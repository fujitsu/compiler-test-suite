module m1
contains
pure function  f(d)
integer,value:: d
integer:: f
f=d+1
end function
subroutine s1(k)
if ( f(k) /=2 ) print *,201
end
end
use m1
k=1
call s1(k)
print *,'pass'
end
