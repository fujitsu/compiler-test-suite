complex :: x=(10,10),y=(20,20),r
r = func (x,x)
print *,'pass'
write (40,*) 'ng', r , x ,y
contains

function func(xx,yy) result( r )
  complex :: xx,yy,r
  xx = (20,20)
  r=yy
end function
end
