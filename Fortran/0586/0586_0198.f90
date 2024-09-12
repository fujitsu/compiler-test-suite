module m
contains
recursive function fun2(y) result(r)
integer::r
integer::y
procedure(fun2),pointer :: p1=>fun2
r=20
print*,"fun PASS"
if(y.eq.1)then
y =2
if(fun2(y).ne.20)print*,"102"
if(p1(y).ne.20)print*,"103"
end if
return 
end function

recursive subroutine sub(y)
procedure(sub),pointer :: p1=>sub
integer::y
print*,"sub PASS"
if(y.eq.1)then
y =2
call sub(y)
call p1(y)
end if
end 
end module
use m

integer::x
integer::y =1
x=fun2(y)
y=1
call sub(y)
print*,"pass"
end

