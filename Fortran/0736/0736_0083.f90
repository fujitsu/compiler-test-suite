module m1
   type x
    integer::x1
    integer,allocatable,dimension(:)::x2
    integer::x3
   end type
end module
use m1
call s1
print *,'pass'
contains
subroutine s1
   type(x),dimension(2)::xa
allocate(xa(2)%x2(3))
end subroutine
end
