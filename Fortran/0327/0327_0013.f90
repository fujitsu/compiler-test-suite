integer:: x(10)=(/1,2,3,4,5,6,7,8,9,10/),r,func,ent

r = func (x(1),x(6))
r = ent  (x(1),x(6))
if (r==0 .and. x(10)==20) then
  print *,'pass'
else
  print * ,'ng', r,x
end if
end

function func(xx,yy) result( r )
    integer :: xx(9) , yy(5),r,ent
     r=xx(5)
entry ent  (xx,yy)
    yy(5) = 20
    ent=0
end function
