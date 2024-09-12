module mod1
type ty
integer::i=1
contains
procedure,pass(d1) :: prc=>fun1  
procedure,pass,private :: prc1=>fun2 
generic :: operator(**) => prc,prc1
end type

type,extends(ty) :: tty
contains
procedure,pass :: prc1=>fun3 
end type

contains
integer function fun()
type(tty) :: obj
type(ty) :: obj1
obj%i=2
obj1%i=2
if((obj1**2)==4) then
 fun=(obj1**2)+(obj**2)
else
 fun=0
endif
end function

integer function fun1(dmy,d1)
CLASS(ty),intent(in)::d1
real,intent(in) :: dmy
if(d1%i==2) then
 fun1=int(dmy)
else
 fun1=0
endif
end function

integer function fun2(dmy,dmy2)
class(ty),intent(in)::dmy
integer,intent(in)::dmy2
fun2=dmy%i*dmy2
end function

integer function fun3(dmy,dmy2)
class(tty),intent(in)::dmy
integer,intent(in)::dmy2
if((dmy%i+dmy2)==4) then
 fun3=3
else
 fun3=0
endif
end function
end module

program main 
use mod1
type(tty) :: obj(2,2,2,2,2,2,2)
call s(obj)

contains
subroutine s(dum)
 class(ty)::dum(:,:,:,:,:,:,:)
 dum(1,2,1,2,2,1,2)%i = 2
 if((1.3**dum(1,2,1,2,2,1,2))/=1) print*,'101'
 if(fun()==7) print*,'PASS'
end subroutine
end
