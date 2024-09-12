integer::x
integer::y =1
integer,external::fun2
x=fun2(y)
y=1
call sub(y)
if(x.ne.20)print*,"101",x
print*,"pass"
end

recursive function fun2(y) result(rslt)
integer::rslt
integer::y
type ty
   procedure(fun2),pointer,nopass :: p1
end type
type(ty)::obj = ty(fun2)
rslt=20
print*,"fun PASS"
if(y.eq.1)then
y =2
if(fun2(y).ne.20)print*,"102"
if(obj%p1(y).ne.20)print*,"103"
end if
return 
end function

recursive subroutine sub(y)
type ty
procedure(sub),pointer ,nopass:: p1
end type
type(ty)::obj = ty(sub)
integer::y
print*,"sub PASS"
if(y.eq.1)then
y =2
call sub(y)
call obj%p1(y)
end if
end 

