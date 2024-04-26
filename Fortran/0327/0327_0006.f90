integer :: x=10,y=12,func,ent
r = func (x,y)
r = ent (x,y)
if ( r==12 .and. y==12) then
print * ,'pass'
else
print * ,'ng', r , x ,y
end if
end

function func(xx,yy) result( r )
  integer :: xx,yy,r
  xx = 20
  entry ent(xx,yy) result( r )
  r=yy
end
