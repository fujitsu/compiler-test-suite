integer(4),parameter,dimension(5,2)::yy1=reshape((/1,2,3,4,5,6,7,8,9,10/), &
                                                                    (/5,2/))
type x
  integer(4),allocatable,dimension(:,:)::x1
end type
type(x)::xv1
integer(2),dimension(2),parameter::sv=(/2,1/)

  xv1=x(yy1(5:1:-2,sv))

  if (.not.allocated(xv1%x1)) write(6,*) "NG"
  if (any(xv1%x1/=reshape((/10,8,6,5,3,1/),(/3,2/)))) write(6,*) "NG"

 print *,'pass'
end
