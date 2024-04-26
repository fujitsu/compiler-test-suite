integer:: x(10)=(/1,2,3,4,5,6,7,8,9,10/),r

r = func (x(1),x(6))
r = func (x(1),x(6),x(10))
if ( r==1 .and. x(9)==20 .and. x(10)==40) then
  print *,'pass'
else
  print *,'ng', r ,x
end if
contains

function func(xx,yy,zz) result( r )
  integer :: xx(8) , yy(5),r
  integer,optional :: zz(1)
  if ( present(zz)) then
    zz=40
  end if
  r=xx(1)
  yy(4) = 20
end function
end
