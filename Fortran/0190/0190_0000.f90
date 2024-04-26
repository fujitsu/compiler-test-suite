module km
integer,parameter::kh=1000
end
module m1
use km
 type x
  integer,allocatable::x1(:)
  integer,allocatable::x2(:)
  integer,allocatable::x3(:)
  integer,allocatable::x4(:)
  integer,allocatable::x5(:)
  integer,allocatable::x6(:)
  integer,allocatable::x7(:)
  integer,allocatable::x8(:)
  integer,allocatable::x9(:)
end type
contains
subroutine s1(a)
  type(x),intent(out):: a(:)
do k=1,size(a)
  if (allocated(a(k)%x1)) print *,101
  if (allocated(a(k)%x2)) print *,101
  if (allocated(a(k)%x3)) print *,101
  if (allocated(a(k)%x4)) print *,104
  if (allocated(a(k)%x5)) print *,104
  if (allocated(a(k)%x6)) print *,104
  if (allocated(a(k)%x7)) print *,104
  if (allocated(a(k)%x8)) print *,104
  if (allocated(a(k)%x9)) print *,104
end do
end subroutine
end
subroutine ss
use m1
  type(x):: a(3000)
do n=1,kh
call s1(a)
end do
end
call st
call ss
print *,'pass'
end
subroutine st
integer z(10000)
z=100
call az(z)
end
subroutine az(z)
integer::z(*)
if (z(1)/=100) print *,900
end
