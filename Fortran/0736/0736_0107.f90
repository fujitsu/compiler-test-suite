module m1
   type y
    integer::y1
    integer,allocatable,dimension(:,:)::y2
    integer::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
end module
use m1
call s1()
print *,'pass'
contains
subroutine s1()
   type(x),dimension(2)::xa
   type(x),allocatable,dimension(:)::ya
allocate(xa(1)%x2(3))
end subroutine
end
