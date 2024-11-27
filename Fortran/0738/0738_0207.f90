integer(4),parameter,dimension(3)::yy1=(/1,2,3/)
type x
  integer(4),allocatable,dimension(:)::x1
end type
type(x)::xv1
integer ,parameter::vs(3)=(/3,1,2/)

  xv1=x(yy1(vs))

  if (.not.allocated(xv1%x1)) write(6,*) "NG"
  if (any(xv1%x1/=(/3,1,2/))) write(6,*) "NG"

 print *,'pass'
end
