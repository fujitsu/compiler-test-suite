integer:: x(10)=(/1,2,3,4,5,6,7,8,9,10/),r,func,ent

r = func (x(1),x(6))
write(1,*)  x,r
r = ent  (x(1),x(6))
write(1,*)  x,r
print *,'pass'
end

function func(xx,yy) result( r )
    integer :: xx(10) , yy(5),r,ent
     r=xx(6)
entry ent(xx,yy) 
    yy(1) = 0
    ent=0
end
