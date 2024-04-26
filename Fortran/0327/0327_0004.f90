complex :: x=(10,10),y=(20,20),r
r = func (x,y)
if (r==(20,20) .and. x==(20,20) .and. y==(20,20)) then
print *,'pass'
else
print *,'ng', r , x ,y
end if
contains

function func(xx,yy) result( r )
  complex :: xx,yy,r
  xx = (20,20)
  r=yy
end function
end
