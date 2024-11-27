   type z
    integer::z1
    integer,allocatable,dimension(:)::z2
    integer::z3
   end type
   type y
    integer::y1
    type(z),allocatable,dimension(:,:)::y3
    integer::y4
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
call s1
print *,'pass'
contains
subroutine s1
   type(x),dimension(2)::xa

do i=1,2
allocate(xa(i)%x2(3))
end do
end subroutine
end
