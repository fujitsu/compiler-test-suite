module mod
type  t1
 integer         :: ii=2
 integer,private :: i=1
end type
type ,extends(t1):: t2
 integer :: j
end type
contains
subroutine chk(y,k)
type (t2) :: y
do n=1,k
if (y%ii/=3)print *,101,y%ii
if (y%i/=1)print *,102,y%i
if (y%j/=3)print *,103,y%j
y%t1%ii=11
y%t1%i=12
if (y%ii/=11)print *,111,y%ii
if (y%i/=12)print *,112,y%i
end do
end subroutine
end
subroutine ss
use mod
type (t2) :: ts2
ts2=t2(t1(3),3)
call chk(ts2,1)
end
call ss
print *,'pass'
end

