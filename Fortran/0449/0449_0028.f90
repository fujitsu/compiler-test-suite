module m1
 type x
  integer::x1
  integer,allocatable::x2(:)
end type
contains
recursive subroutine s1(a)
  type(x),intent(out):: a
  if (allocated(a%x2)) print *,101
  allocate(a%x2(2))
end subroutine
end
use m1
  type(x):: a
do n=1,100
call s1(a)
  if (.not.allocated(a%x2)) print *,102
end do
print *,'pass'
end
