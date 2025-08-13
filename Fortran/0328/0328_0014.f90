integer :: x=10,func
r = func (x,x)
write(31,*)  r , x
print *,'pass'
end

function func(xx,yy) result( r )
  integer :: xx,yy,r
  xx = 20
  r=yy
end
