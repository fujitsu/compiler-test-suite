integer :: x=10,y=20,func,r
r = func (x,y)
if (r==20 .and. x==20 .and. y==20) then
print *,'pass'
else
print *,'ng', r , x ,y
end if
end

function func(xx,yy) result( r )
  integer :: xx,yy,r
  xx = 20
  r=yy
end
