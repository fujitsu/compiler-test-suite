real:: x(10)=(/1,2,3,4,5,6,7,8,9,10/),r,func

r = func (x(1),x(6))
write(29,*)  r
write(29,*)  x
print *,'pass'
end

function func(xx,yy) result( r )
    real :: xx(10) , yy(5),r
     r=xx(6)
    yy(1) = 0
end
