module m1
type x
  integer::x1=2
  integer::x2=3
end type
integer(8)::a01(2),a02(2),a03(2)
integer::m
contains
recursive subroutine s1(n)
type (x),allocatable:: v(:)
if (n>2) return
do kk=1,2
block 
  type (x),save,allocatable:: v(:)
  if (kk==1)allocate( v(m) )
  a03(n)=loc(v)
  if (any(v%x1/=2)) print *,111
  if (any(v%x2/=3)) print *,113
  if (kk==2)deallocate( v)
end block
end do
allocate( v(m) )
a01(n)=loc(v)
n=n+1
call s1(n)
end subroutine 
end
use m1
m=2
n=1
call s1(n)

print *,'pass'
end

