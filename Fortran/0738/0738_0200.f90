integer(4),parameter::p=7
type x
 integer,allocatable,dimension(:)::x1
end type
type(x) ::a(p),aa(p)
integer b(p)

  do i=1,p
    allocate(aa(i)%x1(i))
    aa(i)%x1=(/(j,j=1,i)/)
  enddo

  b=(/7,2,5,4,3,6,1/)

  a=aa(b)

  do i=1,7
    if (.not.allocated(a(i)%x1)) write(6,*) "NG"
    if (size(a(i)%x1)/=b(i)) write(6,*) "NG"
    if (any(a(i)%x1/=(/(j,j=1,b(i))/))) write(6,*) "NG"
  enddo

 print *,'pass'
end
