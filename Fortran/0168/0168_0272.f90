module m1
   type x
     integer::x1
     integer,allocatable::x2(:)
     integer::x3
   end type
contains
integer function   s(v)
type (x),value:: v
if (v%x1/=1) print *,101
if (any(v%x2/=[2,3])) print *,102
if (v%x3/=4) print *,103
v%x1=-1
v%x2=-1
v%x3=-1
s=1
end function
end
subroutine s1
use m1
type (x):: v1
v1%x1=1
allocate(v1%x2,source=[2,3])
v1%x3=4
if (2/=s(v1)+s(v1)) print *,201
if (v1%x1/=1) print *,101
if (any(v1%x2/=[2,3])) print *,102
if (v1%x3/=4) print *,103
end
do k=1,20
call s1
end do
print *,'pass'
end
