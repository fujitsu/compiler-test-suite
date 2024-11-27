module m1
contains
subroutine s1(c1,j1,c2,c3,k1,k2)
character*2,value::c1
integer    ,value,optional::j1
character*2,value,optional::c2
character(len=*)::c3
if (c1/='12')write(6,*) "NG"
c1='abc'
if (present(j1))then
 if (j1/=100)write(6,*) "NG"
 j1=200
 if (k1/=1) write(6,*) "NG"
else
 if (k1/=2) write(6,*) "NG"
endif
if (present(c2))then
 if (c2/='34')write(6,*) "NG"
 c2='56'
 if (k2/=1) write(6,*) "NG"
else
 if (k2/=2) write(6,*) "NG"
endif
 if (c3/='789')write(6,*) "NG"
 if (len(c3)/=3)write(6,*) "NG"
 c3='xyz'
end subroutine
end
use m1
character*2 c,c2,c3*3
c='12'
j1=100
c2='34'
c3='789'
k1=1
k2=1
call s1(c,j1,c2,c3,k1,k2)
if (c/='12')write(6,*) "NG"
if (j1/=100)write(6,*) "NG"
if (c2/='34')write(6,*) "NG"
if (c3/='xyz')write(6,*) "NG"
call s2(c)
if (c/='ab')write(6,*) "NG"
print *,'pass'
end
subroutine s2(c)
character*2::c
if (c/='12')write(6,*) "NG"
c='abc'
end subroutine

