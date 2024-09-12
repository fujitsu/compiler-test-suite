module m
contains
recursive function fun2(y) result(r)
integer::r
integer::y
type ty
procedure(fun2),pointer,nopass :: p1=>fun2
end type

type(ty)::obj = ty(fun2)
r=20
print*,"fun PASS"
if(y.eq.1)then
y =2
if(fun2(y).ne.20)print*,"102"
if(obj%p1(y).ne.20)print*,"103"
end if
return 
end function

recursive subroutine sub(y)

type ty2
procedure(sub),pointer,nopass :: p1
end type
integer::y
type(ty2)::obj2 = ty2(sub)
print*,"sub PASS"
if(y.eq.1)then
y =2
call sub(y)
call obj2%p1(y)
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

