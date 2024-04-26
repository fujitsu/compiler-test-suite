module m
contains 
function func(xx,yy,zz) result( r )
  integer :: xx,yy
  integer,optional::zz
  xx = 30
  if(present(zz)) then 
    zz=40
  end if
entry ent(xx,yy,zz)
  xx = 20
  r=yy
  if(present(zz)) then
    zz=80
    r=zz
  end if
end function
end

use m
integer :: x=10,y=20,z=30,r
r = func (x,y) + func (x,x,z) + ent  (y,y) + ent  (x,z,z)
if (r==200 .and. x==20 .and. y==20 .and. z==80) then
print *,'pass'
else
print *,'ng', r , x ,y,z
end if
end
