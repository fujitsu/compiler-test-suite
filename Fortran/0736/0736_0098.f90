subroutine sub
   type z
    integer::z1
    integer,allocatable,dimension(:)::z2
   end type
   type y
    integer::y1
    type(z),allocatable,dimension(:)::y2
    integer,allocatable,dimension(:)::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer,allocatable,dimension(:)::x3
   end type
   type(x),allocatable,dimension(:)::x1a
allocate(x1a(2))
do i1=1,2
allocate(x1a(i1)%x2(2))
allocate(x1a(i1)%x3(2))
do i2=1,2
allocate(x1a(i1)%x2(i2)%y2(2))
allocate(x1a(i1)%x2(i2)%y3(2))
do i3=1,2
allocate(x1a(i1)%x2(i2)%y2(i3)%z2(2))
end do
end do
end do
end subroutine
call sub
print *,'pass'
end
