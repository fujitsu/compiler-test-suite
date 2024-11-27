   type z
    integer::z1
    integer,allocatable,dimension(:)::z2
    integer::z3
   end type
   type y
    integer::y1
    integer,allocatable,dimension(:,:)::y2
    type(z),allocatable,dimension(:,:)::y3
    integer,allocatable,dimension(:,:)::y4
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer,allocatable,dimension(:)::x3
   end type
   type(x),dimension(2)::x1b
   type(x),dimension(2)::x2b
   type(x),dimension(2)::x3b
   type(x),allocatable,dimension(:)::y1b
   type(x),allocatable,dimension(:)::y2b
   type(x),allocatable,dimension(:)::y3b
do iuyu=1,3
call       s1(x1b,x2b,x3b,y1b,y2b,y3b,2,1)
deallocate(y1b,y2b,y3b)
end do
print *,'pass'
contains
subroutine s1(x1b,x2b,x3b,y1b,y2b,y3b,n2,n1)
   type(x),dimension(2)::x1a,x1b
   type(x),dimension(2)::x2a,x2b
   type(x),dimension(2)::x3a,x3b
   type(x),allocatable,dimension(:)::y1a,y1b
   type(x),allocatable,dimension(:)::y2a,y2b
   type(x),allocatable,dimension(:)::y3a,y3b
do i=n2-n1,n1*n2
allocate(x1a(i)%x2(n2+n1),x1a(i)%x3(n2+n1),x2a(i)%x2(n2+n1),x3a(i)%x2(n2+n1),x2a(i)%x3(n2+n1),stat=kk)
if (kk/=0)write(6,*) "NG"
allocate(x1a(i)%x2(n2+n1),x1a(i)%x3(n2+n1),x2a(i)%x2(n2+n1),x3a(i)%x2(n2+n1),x2a(i)%x3(n2+n1),stat=kk)
if (kk==0)write(6,*) "NG"
do j=1,3
if (allocated(x1a(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(x2a(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(x3a(i)%x2(j)%y2))write(6,*) "NG"
allocate(x1a(i)%x2(j)%y3(n2*n1+n2,n1+n1),x2a(i)%x2(j)%y3(n2*n1+n2,n1+n1),x3a(i)%x2(j)%y3(n2*n1+n2,n1+n1),x2a(i)%x2(j)%y4(n2*n1+n2,n1+n1),stat=kk)
if (kk/=0)write(6,*) "NG"
allocate(x1a(i)%x2(j)%y3(n2*n1+n2,n1+n1),x2a(i)%x2(j)%y3(n2*n1+n2,n1+n1),x3a(i)%x2(j)%y3(n2*n1+n2,n1+n1),x2a(i)%x2(j)%y4(n2*n1+n2,n1+n1),stat=kk)
if (kk==0)write(6,*) "NG"
do k2=n2-n1,n1*n2
do k1=1,4
if (allocated(x1a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(x2a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(x3a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(x1a(i)%x2(j)%y3,x2a(i)%x2(j)%y3,x3a(i)%x2(j)%y3,x2a(i)%x2(j)%y4)
end do
end do
do i=n2-n1,n1*n2
allocate(x1b(i)%x3(n2+n1),x1b(i)%x2(n2+n1),x2b(i)%x2(n2+n1),x3b(i)%x2(n2+n1),stat=kk)
if (kk/=0)write(6,*) "NG"
allocate(x1b(i)%x3(n2+n1),x1b(i)%x2(n2+n1),x2b(i)%x2(n2+n1),x3b(i)%x2(n2+n1),stat=kk)
if (kk==0)write(6,*) "NG"
do j=1,3
if (allocated(x1b(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(x2b(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(x3b(i)%x2(j)%y2))write(6,*) "NG"
allocate(x1b(i)%x2(j)%y4(n2*n1+n2,n1+n1),x1b(i)%x2(j)%y3(n2*n1+n2,n1+n1),x2b(i)%x2(j)%y3(n2*n1+n2,n1+n1),x3b(i)%x2(j)%y3(n2*n1+n2,n1+n1),x3b(i)%x2(j)%y4(n2*n1+n2,n1+n1),stat=kk)
if (kk/=0)write(6,*) "NG"
allocate(x1b(i)%x2(j)%y4(n2*n1+n2,n1+n1),x1b(i)%x2(j)%y3(n2*n1+n2,n1+n1),x2b(i)%x2(j)%y3(n2*n1+n2,n1+n1),x3b(i)%x2(j)%y3(n2*n1+n2,n1+n1),x3b(i)%x2(j)%y4(n2*n1+n2,n1+n1),stat=kk)
if (kk==0)write(6,*) "NG"
do k2=n2-n1,n1*n2
do k1=1,4
if (allocated(x1b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(x2b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(x3b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(x1b(i)%x2(j)%y3,x2b(i)%x2(j)%y3,x3b(i)%x2(j)%y3)
end do
deallocate(x1b(i)%x2,x2b(i)%x2,x3b(i)%x2,x1b(i)%x3)
end do
allocate (y1a(2),y2a(2),y3a(2),stat=kk)
if (kk/=0)write(6,*) "NG"
allocate (y1a(2),y2a(2),y3a(2),stat=kk)
if (kk==0)write(6,*) "NG"
do i=n2-n1,n1*n2
allocate(y1a(i)%x2(n2+n1),y2a(i)%x2(n2+n1),y3a(i)%x2(n2+n1),y2a(i)%x3(n2+n1))
do j=1,3
if (allocated(y1a(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(y2a(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(y3a(i)%x2(j)%y2))write(6,*) "NG"
allocate(y1a(i)%x2(j)%y3(n2*n1+n2,n1+n1),y2a(i)%x2(j)%y3(n2*n1+n2,n1+n1),y1a(i)%x2(j)%y4(n2*n1+n2,n1+n1),y2a(i)%x2(j)%y4(n2*n1+n2,n1+n1),y3a(i)%x2(j)%y3(n2*n1+n2,n1+n1),stat=kk)
if (kk/=0)write(6,*) "NG"
allocate(y1a(i)%x2(j)%y3(n2*n1+n2,n1+n1),y2a(i)%x2(j)%y3(n2*n1+n2,n1+n1),y1a(i)%x2(j)%y4(n2*n1+n2,n1+n1),y2a(i)%x2(j)%y4(n2*n1+n2,n1+n1),y3a(i)%x2(j)%y3(n2*n1+n2,n1+n1),stat=kk)
if (kk==0)write(6,*) "NG"
do k2=n2-n1,n1*n2
do k1=1,4
if (allocated(y1a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(y2a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(y3a(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(y1a(i)%x2(j)%y3,y2a(i)%x2(j)%y3,y3a(i)%x2(j)%y3,y1a(i)%x2(j)%y4,y2a(i)%x2(j)%y4)
end do
end do
allocate (y1b(2),y2b(2),y3b(2),stat=kk)
if (kk/=0)write(6,*) "NG"
allocate (y1b(2),y2b(2),y3b(2),stat=kk)
if (kk==0)write(6,*) "NG"
do i=n2-n1,n1*n2
allocate(y1b(i)%x2(n2+n1),y2b(i)%x3(n2+n1),y3b(i)%x3(n2+n1),y1b(i)%x3(n2+n1),y2b(i)%x2(n2+n1),y3b(i)%x2(n2+n1),stat=kk)
if (kk/=0)write(6,*) "NG"
allocate(y1b(i)%x2(n2+n1),y2b(i)%x3(n2+n1),y3b(i)%x3(n2+n1),y1b(i)%x3(n2+n1),y2b(i)%x2(n2+n1),y3b(i)%x2(n2+n1),stat=kk)
if (kk==0)write(6,*) "NG"
do j=1,3
if (allocated(y1b(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(y2b(i)%x2(j)%y2))write(6,*) "NG"
if (allocated(y3b(i)%x2(j)%y2))write(6,*) "NG"
allocate(y1b(i)%x2(j)%y3(n2*n1+n2,n1+n1),y2b(i)%x2(j)%y3(n2*n1+n2,n1+n1),y3b(i)%x2(j)%y3(n2*n1+n2,n1+n1),y2b(i)%x2(j)%y4(n2*n1+n2,n1+n1))
do k2=n2-n1,n1*n2
do k1=1,4
if (allocated(y1b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(y2b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
if (allocated(y3b(i)%x2(j)%y3(k1,k2)%z2))write(6,*) "NG"
end do
end do
deallocate(y1b(i)%x2(j)%y3,y2b(i)%x2(j)%y3,y3b(i)%x2(j)%y3,y2b(i)%x2(j)%y4)
end do
deallocate(y1b(i)%x2,y2b(i)%x2,y3b(i)%x2,y1b(i)%x3,y2b(i)%x3,y3b(i)%x3)
end do
end subroutine
end
