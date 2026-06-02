module m1
type x
  integer::x1=2
  integer::x2=3
end type
integer(8)::a01(2),a02(2),a03(2)
contains
recursive subroutine s1(n)
type (x):: v
if (n>2) return
do kk=1,2
block 
  type (x):: v
  a02(n)=loc(v)
  if (v%x1/=2) print *,101
  if (v%x2/=3) print *,103
end block
end do
do kk=1,2
block 
  type (x):: v
  a03(n)=loc(v)
  if (v%x1/=2) print *,111
  if (v%x2/=3) print *,113
  v=x(4,5)
  if (v%x1/=4) print *,114
  if (v%x2/=5) print *,115
end block
end do
a01(n)=loc(v)
n=n+1
call s1(n)
end subroutine 
end
use m1
n=1
call s1(n)
if (a01(1)==a01(2)) print *,201
if (a02(1)==a02(2)) print *,202
if (a03(1)==a03(2)) print *,203

print *,'pass'
end
