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
call s1
print *,'pass'
contains
subroutine s1
   type(x),dimension(5)::xa,xb,xc
do j=1,5
allocate(xa(j)%x2(3),xb(j)%x2(3),xc(j)%x2(3))
do i=1,3
if (allocated(xa(j)%x2(i)%y2))write(6,*) "NG"
if (allocated(xa(j)%x2(i)%y2))write(6,*) "NG"
if (allocated(xa(j)%x2(i)%y2))write(6,*) "NG"
end do
end do
end subroutine
end
