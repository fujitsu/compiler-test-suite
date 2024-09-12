module m1
contains
subroutine t(cx)
integer     ,value:: cx(:)
if (any(cx/=[1,2])) print *,2021
cx=13
if (any(cx/=13)) print *,2022
end subroutine
end

subroutine s1
use m1
integer::x(3)=[1,0,2]
call t([1,2])
call t(x(::2))
if (any(x/=[1,0,2])) print *,301
end
call s1
print *,'pass'
end
