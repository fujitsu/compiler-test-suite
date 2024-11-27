   type a2
    integer,allocatable,dimension(:)::z1
    integer,allocatable,dimension(:)::z2
    integer,allocatable,dimension(:)::z3
    integer,allocatable,dimension(:)::z4
    integer,allocatable,dimension(:)::z5
   end type
   type a1
    type(a2)::z41
    type(a2)::z42
    type(a2)::z43
    type(a2)::z44
    type(a2)::z45
    type(a2)::z46
   end type
   type z
    integer::z1
    integer,allocatable,dimension(:)::z2
    integer::z3
    type(a1),allocatable,dimension(:)::z4
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
type(x),dimension(2)::xb
type(x),allocatable,dimension(:)::yb
do iuuu=1,3
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
allocate(xa(i)%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(xa(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(xa(i)%x2(j)%y3)
end do
end do
do i=1,2
allocate(xb(i)%x2(3))
do j=1,3
if (allocated(xb(i)%x2(j)%y2))write(6,*) "NG"
allocate(xb(i)%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(xb(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(xb(i)%x2(j)%y3)
end do
deallocate(xb(i)%x2)
end do
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
