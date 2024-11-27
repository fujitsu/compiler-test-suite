integer(4),parameter,dimension(5,2)::yy1=reshape((/1,2,3,4,5,6,7,8,9,10/), &
                                                                    (/5,2/))
type x
  integer(4),allocatable,dimension(:,:)::x1
end type
type(x)::xv1

  xv1=x(yy1(1:5:2,1:2))

  if (.not.allocated(xv1%x1)) write(6,*) "NG"
  if (any(xv1%x1/=reshape((/1,3,5,6,8,10/),(/3,2/)))) write(6,*) "NG"

 print *,'pass'
end
