module m1
 type x
  integer::x1
  integer,allocatable::x2(:)
end type
contains
impure elemental subroutine s1(a)
  type(x),intent(out):: a
  if (allocated(a%x2)) print *,101
  allocate(a%x2(2))
end subroutine
end
use m1
  type(x):: a(3)
do n=1,100
call s1(a)
  if (.not.allocated(a(1)%x2)) print *,102
  if (.not.allocated(a(2)%x2)) print *,102
  if (.not.allocated(a(3)%x2)) print *,102
end do
print *,'pass'
end
