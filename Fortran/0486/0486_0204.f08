module m1
contains
subroutine s(c,k)
character(k),value:: c
if (len(c)/=k) print *,201
if (c/='12') print *,202
c='ab'
if (c/='ab') print *,202
end subroutine
end

subroutine s1
use m1
character(2):: cc='12'
call s( cc , 2)
if (cc/='12') print *,202
call s( '12' , 2)
end
call s1
print *,'pass'
end
