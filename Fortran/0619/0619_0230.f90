module m1
 type x
  integer::x1=1
 end type
 type y
   character(32767),allocatable::y2(:)
   complex(16),allocatable::y3(:)
   type(x),allocatable::y1(:)
 end type
 type (y),allocatable::z(:)
contains
subroutine s1
if (allocated(z))print *,101
allocate(z(2))
if (allocated(z(1)%y1))print *,201
if (allocated(z(1)%y2))print *,202
if (allocated(z(1)%y3))print *,203
if (allocated(z(2)%y1))print *,201
if (allocated(z(2)%y2))print *,202
if (allocated(z(2)%y3))print *,203
allocate(z(2)%y1(1))
if (z(2)%y1(1)%x1/=1) print *,301
allocate(z(1)%y1(1))
if (z(1)%y1(1)%x1/=1) print *,303
end subroutine
end
use m1
call s1
print *,'pass'
end
