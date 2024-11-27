   type x
    integer::x1
    integer,allocatable,dimension(:)::x2
    integer::x3
   end type
do j=1,5
call s1
end do
print *,'pass'
contains
subroutine s1
   type(x),dimension(5)::xa,xb,xc
do i=1,5
allocate(xa(i)%x2(3),xb(i)%x2(3),xc(i)%x2(3))
end do
end subroutine
end
