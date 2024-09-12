module m1

type :: t1
integer :: xx
end type 

type , extends(t1) :: t2
integer :: yy
end type 

type , extends(t2):: t3
integer :: zz
end type 

type :: t4
real :: rr
end type 
end module 

module m2
use m1
contains 
function fun(dum)
class(t1),target :: dum
type(t1), pointer :: fun

fun=>dum
end function
end module 


program test
use m2
implicit none
type(t1) :: act
type(t1),pointer::ptr
act%xx=10

ptr=>fun(act)
if(ptr%xx == 10) then
 print*,'pass'
else
 print*,101
endif
end 
