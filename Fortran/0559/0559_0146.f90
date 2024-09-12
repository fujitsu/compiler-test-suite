module mod1
implicit none
integer,parameter::arr=12
type ty(p,q)
    integer,kind::p=4,q
    integer::i = p+arr
end type
type,extends(ty)::ty1(r)
   integer,kind::r =p+arr+q
   integer::j =p+q+r  
end type
end module
program main
use mod1
implicit none
type(ty1(q=4))::obj
if(obj%j .eq. 28 ) then
 print*,"pass"
else
 print*,"fail"
endif
end
