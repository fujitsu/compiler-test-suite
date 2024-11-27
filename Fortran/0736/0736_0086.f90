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
   type(x),dimension(2)::x1b
   type(x),dimension(2)::x2b
   type(x),dimension(2)::x3b
   type(x),allocatable,dimension(:)::y1b
   type(x),allocatable,dimension(:)::y2b
   type(x),allocatable,dimension(:)::y3b
do iuux=1,3
call       s1(x1b,x2b,x3b,y1b,y2b,y3b)
deallocate(y1b,y2b,y3b)
end do
print *,'pass'
contains
subroutine s1(x1b,x2b,x3b,y1b,y2b,y3b)
   type(x),dimension(2)::x1a,x1b
   type(x),dimension(2)::x2a,x2b
   type(x),dimension(2)::x3a,x3b
   type(x),allocatable,dimension(:)::y1a,y1b
   type(x),allocatable,dimension(:)::y2a,y2b
   type(x),allocatable,dimension(:)::y3a,y3b
do i=1,2
allocate(x1a(i)%x2(3),x2a(i)%x2(3),x3a(i)%x2(3))
do j=1,3
if (allocated(x1a(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(x2a(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(x3a(i)%x2(j)%y2))write(6,*) "NG"
allocate(x1a(i)%x2(j)%y3(4,2),x2a(i)%x2(j)%y3(4,2),x3a(i)%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(x1a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(x2a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(x3a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(x1a(i)%x2(j)%y3,x2a(i)%x2(j)%y3,x3a(i)%x2(j)%y3)
end do
end do
do i=1,2
allocate(x1b(i)%x2(3),x2b(i)%x2(3),x3b(i)%x2(3))
do j=1,3
if (allocated(x1b(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(x2b(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(x3b(i)%x2(j)%y2))write(6,*) "NG"
allocate(x1b(i)%x2(j)%y3(4,2),x2b(i)%x2(j)%y3(4,2),x3b(i)%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(x1b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(x2b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(x3b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(x1b(i)%x2(j)%y3,x2b(i)%x2(j)%y3,x3b(i)%x2(j)%y3)
end do
deallocate(x1b(i)%x2,x2b(i)%x2,x3b(i)%x2)
end do
allocate (y1a(2),y2a(2),y3a(2))
do i=1,2
allocate(y1a(i)%x2(3),y2a(i)%x2(3),y3a(i)%x2(3))
do j=1,3
if (allocated(y1a(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(y2a(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(y3a(i)%x2(j)%y2))write(6,*) "NG"
allocate(y1a(i)%x2(j)%y3(4,2),y2a(i)%x2(j)%y3(4,2),y3a(i)%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(y1a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(y2a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(y3a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(y1a(i)%x2(j)%y3,y2a(i)%x2(j)%y3,y3a(i)%x2(j)%y3)
end do
end do
allocate (y1b(2),y2b(2),y3b(2))
do i=1,2
allocate(y1b(i)%x2(3),y2b(i)%x2(3),y3b(i)%x2(3))
do j=1,3
if (allocated(y1b(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(y2b(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(y3b(i)%x2(j)%y2))write(6,*) "NG"
allocate(y1b(i)%x2(j)%y3(4,2),y2b(i)%x2(j)%y3(4,2),y3b(i)%x2(j)%y3(4,2))
do k2=1,2
do k1=1,4
if (allocated(y1b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(y2b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(y3b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(y1b(i)%x2(j)%y3,y2b(i)%x2(j)%y3,y3b(i)%x2(j)%y3)
end do
deallocate(y1b(i)%x2,y2b(i)%x2,y3b(i)%x2)
end do
end subroutine
end
