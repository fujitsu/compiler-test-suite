module mod1
type ty
real::i=0
contains
procedure :: prc=>fun1  
procedure :: prc1=>fun2 
generic,private :: gnr => prc,prc1
end type
 
type,extends(ty) :: tty
integer::j=0
contains
procedure :: prc2=>fun3 
procedure :: prc1=>fun4
generic,private :: gnr => prc2 
end type
 
contains
integer function fun()
class(ty),allocatable::obj
allocate(ty::obj)
if(obj%gnr([1,2])==4) then
 fun=1
else
 fun=0
endif

deallocate(obj)
allocate(tty::obj)
obj%i=2
if(obj%gnr([1,2])==4) then
 fun=fun+1
else
 fun=0
endif
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
 fun2=d1(2)+odum%gnr(dmy)
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
fun4=d1(2)-dmy%i+int(dmy%gnr(2))
end function
end module
 
use mod1
if(fun()/=2) then
 print*,'FAIL'
else
 print*,'PASS'
endif
end

