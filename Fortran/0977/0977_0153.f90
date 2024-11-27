module m1
contains
subroutine s1(c)
character*2,value::c
if (c/='12')write(6,*) "NG"
c='abc'
end subroutine
end
use m1
character*2 c
c='12'
call s1(c)
if (c/='12')write(6,*) "NG"
call s2(c)
if (c/='ab')write(6,*) "NG"
print *,'pass'
end
subroutine s2(c)
character*2::c
if (c/='12')write(6,*) "NG"
c='abc'
end subroutine

