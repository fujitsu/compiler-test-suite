   type a2
    integer,allocatable,dimension(:)::z1
   end type
   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
    type(a2),allocatable,dimension(:)::y3
    integer::y4
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
do ii=1,3
call s1
end do
print *,'pass'
contains
subroutine s1
   type(x),dimension(2)::xa
do i=1,2
allocate(xa(i)%x2(3))
do j=3,3
if (allocated(xa(i)%x2(3)%y2))write(6,*) "NG"
allocate(xa(i)%x2(3)%y3(1))
deallocate(xa(i)%x2(j)%y3)
end do
end do
end subroutine
end
