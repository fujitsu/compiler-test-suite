real :: x=10,func
r = func (x,x)
write (1,*) r , x
print *,'pass'
end

function func(xx,yy) result( r )
  real :: xx,yy,r
  xx = 20
  r=yy
end
