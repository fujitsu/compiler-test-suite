module mod1
type tt
 integer::j=2
 contains
 procedure::prc=>fun
end type

type,extends(tt)::tt2
 character(8)::ch
 contains
 procedure::prc=>fun2
end type

contains
function fun(pdmy,d1)
class(tt)::pdmy
integer::d1
fun=pdmy%j+d1
end function

function fun2(pdmy,d1)
class(tt2)::pdmy
integer::d1
fun2=pdmy%j-d1
end function
end module

program main
use mod1
type(tt2)::act(2,3)
act(2,2)%j=3
act(2,2)%ch='hello'
call s(act)

contains
subroutine s(dum)
 class(*)::dum(2,3)
 select type(dum)
  type is(integer)
   print*,'101'
  class is(tt)
   print*,'102'
  class is(tt2)
   if(dum(2,2)%prc(1)/=2) then
    print*,'103'
   else
    print*,'PASS'
   endif
 end select
end subroutine
end program
