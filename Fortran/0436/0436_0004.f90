MODULE m1
type xx
integer::c=10
integer,allocatable:: u1
integer,allocatable:: u2
integer,allocatable:: u3
integer,allocatable:: u4
end type
end
subroutine s1
use  m1
integer(8):: a(2)=[5,4]
k=1
call ss(xx(u1=k,u2=k+1,u3=3,u4=a(2)))
end
do k=1,30
call s1
end do
print *,'pass'
end
subroutine ss(w)
use m1
type(xx):: w
if (w%c/=10)print *,101
if (w%u1/=1)print *,101
if (w%u2/=2)print *,101
if (w%u3/=3)print *,101
if (w%u4/=4)print *,101
deallocate(w%u1)
deallocate(w%u3)
end

