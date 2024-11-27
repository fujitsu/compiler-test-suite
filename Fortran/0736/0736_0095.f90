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
call       s1(2,1)
print *,'pass'
contains
subroutine s1(n2,n1)
   type(x),dimension(2)::x1a
   type(x),dimension(2)::x2a
   type(x),dimension(2)::x3a
   integer kk(n2+n1)
do i=1,2
allocate(x1a(i)%x2(3),x1a(i)%x3(3),x2a(i)%x2(3),x3a(i)%x2(3),x2a(i)%x3(3),stat=kk(n2+n1))
if (kk(3)/=0)call err
do j=1,3
if (allocated(x1a(i)%x2(j)%y2))call err
if (allocated(x2a(i)%x2(j)%y2))call err
if (allocated(x3a(i)%x2(j)%y2))call err
allocate(x1a(i)%x2(j)%y3(4,2),x2a(i)%x2(j)%y3(4,2),x3a(i)%x2(j)%y3(4,2))
deallocate(x1a(i)%x2(j)%y3,x2a(i)%x2(j)%y3,x3a(i)%x2(j)%y3)
end do
end do
end subroutine
end
subroutine err
write(6,*) "NG"
stop
end
