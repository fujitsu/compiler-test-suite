integer:: x(10)=(/1,2,3,4,5,6,7,8,9,10/),r
integer :: n1,n2
read *,n1,n2
r = func (x(n1),x(n2))
if ( r==6  .and. x(6)==20 ) then
  print *,'pass'
else
  print *,'ng',r,x
end if
contains

function func(xx,yy) result( r )
  integer :: xx(10) , yy(5),r
  r=xx(6)
  yy(1) = 20
end function
end
