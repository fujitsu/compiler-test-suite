module m1
contains
subroutine s1(c1) 
character(len=1),value::c1
entry      s2(c1) bind(c)
c1='1'
end subroutine 
end
use m1
character c
c='a'
call s1(c)
if (c/='a')print *,101,c
call s2(c)
if (c/='a')print *,101,c
print *,'pass'
end

