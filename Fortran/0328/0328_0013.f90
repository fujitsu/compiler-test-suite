character(10):: x='10'
character(10) :: r
r = func (x,x)
if (r=='20' .and. x=='20' ) then
print *,'pass'
else
print *,'ng', r , x
end if
contains

function func(xx,yy) result( r )
  character(*) :: xx,yy
  character(10) :: r
  xx = '20'
  r=yy
end function
end
