module m1
contains
subroutine s1(c)
character*2,value::c
if (c/='12')write(6,*) "NG"
c='ab'
end subroutine
subroutine s2(i)
integer,value::i
if (i/=2)write(6,*) "NG"
i=3
end subroutine
end
use m1
character*2::x
x='12'
call s1(x)
if (x/='12')write(6,*) "NG"
i=2
call s2(i)
if (i/=2)write(6,*) "NG"
print *,'pass'
end

