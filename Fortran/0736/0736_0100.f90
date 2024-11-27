do i=1,5
call s1
end do
print *,'pass'
contains
subroutine s1
   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
    integer::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
   type(x),dimension(5)::xa
allocate(xa(2)%x2(3))
end subroutine
end
