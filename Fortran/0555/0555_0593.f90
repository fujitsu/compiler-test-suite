module mod1
type ty
integer::i=0
contains
procedure,pass :: prc=>fun1  
procedure,nopass,private :: prc1=>fun2 
generic :: gnr => prc,prc1
end type
 
type,extends(ty) :: tty
integer::k=0
contains
procedure,nopass :: prc1=>fun3 
end type
 
contains
integer function fun()
type(tty) :: obj
type(ty) :: obj1
obj%i=0
obj1%i=0
if(obj1%gnr(1,2)==2) then
 fun=obj1%gnr(1,2)+obj%gnr(1,2)
else
 fun=0
endif
end function

integer function fun1(dmy)
CLASS(ty)::dmy
if(sizeof(dmy)==8 .and. dmy%i==2) then
 fun1=1
else
 fun1=0
endif
end function

integer function fun2(dmy,dmy2)
integer::dmy,dmy2
fun2=dmy*dmy2
end function

integer function fun3(dmy,dmy2)
integer::dmy,dmy2
if((dmy+dmy2)==3) then
 fun3=3
else
 fun3=0
endif
end function
end module

program main 
use mod1,only: tynew=>ty,ttynew=>tty
use mod1,only: fun,fun1,fun2,fun3
type(ttynew) :: obj(2,2,2,2,2,2,2)
call s(obj)

contains
subroutine s(dum)
 class(tynew)::dum(:,:,:,:,:,:,:)
 dum(1,2,1,2,2,1,2)%i = 2
 if(dum(1,2,1,2,2,1,2)%gnr()/=1) print*,'101'
 if(fun()==5) print*,'PASS'
end subroutine
end
