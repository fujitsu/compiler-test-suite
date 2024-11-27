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
type(x),dimension(2)::xb
type(x),allocatable,dimension(:)::yb
do ixu=1,3
call s1(xb,yb)
deallocate(yb)
end do
print *,'pass'
contains
subroutine s1(xb,yb)
   type(x),dimension(2)::xa,xb
   type(x),allocatable,dimension(:)::ya,yb
do i=1,2
allocate(xa(i)%x2(3))
do j=1,3
if (allocated(xa(i)%x2(j)%y2))write(6,*) "NG"
end do
end do
do i=1,2
allocate(xb(i)%x2(3))
do j=1,3
if (allocated(xb(i)%x2(j)%y2))write(6,*) "NG"
end do
deallocate(xb(i)%x2)
end do
allocate (ya(2))
do i=1,2
allocate(ya(i)%x2(3))
do j=1,3
if (allocated(ya(i)%x2(j)%y2))write(6,*) "NG"
end do
end do
allocate (yb(2))
do i=1,2
allocate(yb(i)%x2(3))
do j=1,3
if (allocated(yb(i)%x2(j)%y2))write(6,*) "NG"
end do
deallocate(yb(i)%x2)
end do
end subroutine
end
