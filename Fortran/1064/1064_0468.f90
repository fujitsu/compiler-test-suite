module m1
 type x
  integer:: x1
  integer,allocatable:: x2
  integer:: x4
end type
end
subroutine s1
use m1
type(x),allocatable:: sx1,sx2

allocate(sx1)
sx1%x1=1
sx1%x2=2
sx1%x4=5
call chk(sx1,0)
end
use m1
call s1
print *,'pass'
end
subroutine chk(sx,k)
use m1
type(x),intent(in):: sx
if (sx%x1/=1+k) print *,1001,sx%x1
if (sx%x2/=2+k) print *,1002,sx%x2
if (sx%x4/=5+k) print *,1005,sx%x4
end 
