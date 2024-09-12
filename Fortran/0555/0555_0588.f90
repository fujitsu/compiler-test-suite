module mod1
type ty
real::i=0
contains
procedure :: prc=>fun1  
procedure :: prc1=>fun2 
end type
 
type,extends(ty) :: tty
integer::j=0
contains
procedure :: prc3=>fun3 
procedure :: prc4=>fun4
end type
 
contains
integer function fun(obj)
class(ty)::obj(5,4,6,3)
select type(obj)
type is(ty)
 if(obj(5,4,5,2)%prc1([1,2])==4) then
  fun=1
 else
  fun=0
 endif
type is(tty)
obj(5,4,5,2)%i=2
if(obj(5,4,5,2)%prc4([1,2])==4) then
 fun=2
else
 fun=0
endif
end select
end function

integer function fun1(dmy,d1)
CLASS(ty)::dmy
class(ty)::d1
select type(d1)
 class is(ty)
  if(sizeof(dmy)==8) fun1=int(d1%i)
endselect
end function

integer function fun2(dmy,d1)
CLASS(ty)::dmy
type(ty)::f2
type(tty)::odum
integer::d1(2)
dmy%i=real(2)
if(same_type_as(dmy,f2)) then
 fun2=d1(2)+odum%prc(dmy)
else
 fun2=d1(1)
endif
end function

real function fun3(dmy,d1)
CLASS(tty)::dmy
integer::d1
fun3=real(dmy%i+d1)
end function

integer function fun4(dmy,d1)
CLASS(tty)::dmy
integer::d1(2)
fun4=d1(2)-dmy%i+int(dmy%prc3(2))
end function
end module
 
use mod1
type(ty)::act1(5,4,6,3)
type(tty)::act2(5,4,6,3)

act1(5,4,5,2)%i=real(3)
act2(5,4,5,2)%i=real(6)
act2(5,4,5,2)%j=9
if(fun(act1)==1) then
 if(fun(act2)==2) print*,'PASS'
else
 print*,'201'
endif
end

