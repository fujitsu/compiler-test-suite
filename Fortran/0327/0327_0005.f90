character(10):: x='10',y='20'
character(10) :: r
r = func (x,y)
if (r=='20' .and. x=='20' .and. y=='20') then
print *,'pass'
else
print *,'ng', r , x ,y
end if
contains

function func(xx,yy) result( r )
  character(*) :: xx,yy
  character(10) :: r
  xx = '20'
  r=yy
end function
end
