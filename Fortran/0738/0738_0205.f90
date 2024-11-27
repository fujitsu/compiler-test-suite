integer(8),parameter,dimension(2)::yy1=(/1,2/)
type x
  integer(8),allocatable,dimension(:)::x1
end type
type(x)::xv1
integer(4),parameter,dimension(2)::vs=(/2,1/)

  xv1=x(yy1(vs))

  if (.not.allocated(xv1%x1)) write(6,*) "NG"
  if (any(xv1%x1/=(/2,1/))) write(6,*) "NG"

 print *,'pass'
end
