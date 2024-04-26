module m1
type x
  integer::x1=2
  integer::x2=3
end type
integer(8)::a01(2),a02(2),a03(2)
integer::m
contains
recursive subroutine s1(n)
character (m) :: v
if (n>2) return
do kk=1,2
block 
  character (m) :: v
  v='12'
  a02(n)=loc(v)
  if (len(v)/=2) print *,102
  if (v/='12') print *,101
end block
end do
do kk=1,2
block 
  character (m) :: v(m)
  v='34'
  a03(n)=loc(v)
  if (len(v)/=2) print *,112
  if (any(v/='34')) print *,111
  a03(n)=loc(v)
end block
end do
  v='56'
  if (len(v)/=2) print *,122
  if (   (v/='56')) print *,121
a01(n)=loc(v)
n=n+1
call s1(n)
end subroutine 
end
use m1
m=2
do kk=1,3
n=1
call s1(n)
if (a01(1)==a01(2)) print *,201
if (a02(1)==a02(2)) print *,202
if (a03(1)==a03(2)) print *,203
end do

print *,'pass'
end
