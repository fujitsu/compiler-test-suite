integer(4),parameter,dimension(1,5)::yy1=reshape((/1,2,3,4,5/),(/1,5/))
type x
  integer(4),allocatable,dimension(:,:)::x1
end type
type(x)::xv1

  xv1=x(yy1(:,4:1:-3))

  if (.not.allocated(xv1%x1)) write(6,*) "NG"
  if (any(xv1%x1/=reshape((/4,1/),(/1,2/)))) write(6,*) "NG"

 print *,'pass'
end
