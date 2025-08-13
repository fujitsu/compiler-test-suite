integer :: x=10,func,ent,r
r = func (x,x)
r = ent  (x,x)
write(41,*) r , x
print *,'pass'
end

function func(xx,yy) result( r )
integer :: xx,yy,r
xx = 20
entry ent(xx,yy) result( r )
r=yy
end function
