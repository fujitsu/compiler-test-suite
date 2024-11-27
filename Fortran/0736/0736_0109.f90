   type z
    integer::z1
    integer,allocatable,dimension(:)::z2
    integer::z3
   end type
   type y
    integer::y1
    integer,allocatable,dimension(:,:)::y2
    type(z),allocatable,dimension(:,:)::y3
    integer::y4
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
type(x)::xb
type(x),allocatable,dimension(:)::yb
do iuyu=1,3
call s1(xb,yb)
deallocate(yb)
end do
print *,'pass'
contains
subroutine s1(xb,yb)
   type(x)::xa,xb
   type(x),allocatable,dimension(:)::ya,yb
allocate(xa%x2(3))
do j=1,3
if (allocated(xa%x2(j)%y2))write(6,*) "NG"
allocate(xa%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(xa%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(xa%x2(j)%y3)
end do
allocate(xb%x2(3))
do j=1,3
if (allocated(xb%x2(j)%y2))write(6,*) "NG"
allocate(xb%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(xb%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(xb%x2(j)%y3)
end do
deallocate(xb%x2)
allocate (ya(2))
do i=1,2
allocate(ya(i)%x2(3))
do j=1,3
if (allocated(ya(i)%x2(j)%y2))write(6,*) "NG"
allocate(ya(i)%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(ya(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(ya(i)%x2(j)%y3)
end do
end do
allocate (yb(2))
do i=1,2
allocate(yb(i)%x2(3))
do j=1,3
if (allocated(yb(i)%x2(j)%y2))write(6,*) "NG"
allocate(yb(i)%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(yb(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(yb(i)%x2(j)%y3)
end do
deallocate(yb(i)%x2)
end do
end subroutine
end
