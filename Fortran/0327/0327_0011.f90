character(10),dimension(10):: x=(/'1','2','3','4','5','6','7','8','9','0'/)
character(10)::r
r = func (x(1),x(6))
if ( r=='1' .and. x(10)=='20' ) then
  print *,'pass'
else
  print *,'ng', r ,x
end if
contains

function func(xx,yy) result( r )
  character(*) :: xx(9) , yy(5)
  character(10)::r
  r=xx(1)
  yy(5) = '20'
end function
end
