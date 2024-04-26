complex:: x(10)=(/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10)/),r

r = func (x(1),x(6))
if ( r==(12,12) .and. x(10)==(10,10) ) then
  print *,'pass'
else
  print *,'ng', r ,x
end if
contains

function func(xx,yy) result( r )
  complex :: xx(10) , yy(5),r
  r=xx(6)+yy(1)
  yy(1) = (20,20)
end function
end
