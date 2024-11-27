type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,parameter,dimension(10,10)::a=reshape((/(i,i=1,100)/),(/10,10/))
integer,parameter,dimension(5)::sv=(/1,3,5,2,4/)

  p=x(a(1:10,1))
  if (.not.allocated(p%p1)) write(6,*) "NG"
  if (size(p%p1)/=10) write(6,*) "NG"
  if (any(lbound(p%p1)/=(/1/))) write(6,*) "NG"
  if (any(ubound(p%p1)/=(/10/))) write(6,*) "NG"
  if (any(p%p1/=(/(i,i=1,10)/))) write(6,*) "NG"
  p=x(a(1,1:10))
  if (.not.allocated(p%p1)) write(6,*) "NG"
  if (size(p%p1)/=10) write(6,*) "NG"
  if (any(lbound(p%p1)/=(/1/))) write(6,*) "NG"
  if (any(ubound(p%p1)/=(/10/))) write(6,*) "NG"
  if (any(p%p1/=(/(i,i=1,91,10)/))) write(6,*) "NG"
  p=x(a(sv,1))
  if (.not.allocated(p%p1)) write(6,*) "NG"
  if (size(p%p1)/=5) write(6,*) "NG"
  if (any(lbound(p%p1)/=(/1/))) write(6,*) "NG"
  if (any(ubound(p%p1)/=(/5/))) write(6,*) "NG"
  if (any(p%p1/=(/1,3,5,2,4/))) write(6,*) "NG"
  p=x(a(5,sv))
  if (.not.allocated(p%p1)) write(6,*) "NG"
  if (size(p%p1)/=5) write(6,*) "NG"
  if (any(lbound(p%p1)/=(/1/))) write(6,*) "NG"
  if (any(ubound(p%p1)/=(/5/))) write(6,*) "NG"
  if (any(p%p1/=(/5,25,45,15,35/))) write(6,*) "NG"

 print *,'pass'
end
