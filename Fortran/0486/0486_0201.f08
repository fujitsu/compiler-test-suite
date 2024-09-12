module m1
contains
subroutine s(c,k)
character(k),value:: c
if (len(c)/=k) print *,201
if (c/='12') print *,202
c='ab'
if (c/='ab') print *,202
end subroutine
subroutine t(cx)
integer     ,value:: cx(3)
if (any(cx/=[1,2,3])) print *,2021
cx=13
if (any(cx/=13)) print *,2022
end subroutine
end

subroutine s1
use m1
character(2):: cc='12'
call s( cc , 2)
if (cc/='12') print *,202
call s( '12' , 2)
if ('12'/='12') print *,202
call t([1,2,3])
end
call s1
print *,'pass'
end
