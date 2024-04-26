integer :: x=10,y=20,r
r = func (x,y)
r = func (x,y,x)
if (r==20 .and. x==20 .and. y==20 ) then
print *,'pass'
else
print *,'ng', r , x ,y
end if
contains 

function func(xx,yy,zz) result( r )
  integer :: xx,yy
  integer,optional::zz
  if(present(zz)) then 
    zz=40
  end if
  xx = 20
  r=yy
end function
end
