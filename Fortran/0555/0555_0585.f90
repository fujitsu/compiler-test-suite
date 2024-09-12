module mod1
type tt
 integer::j=2
 contains
 procedure::prc=>fun
end type

type,extends(tt)::tt2
 character(8)::ch
 contains
 procedure::prc2=>fun2
end type

contains
function fun(pdmy,d1)
 class(tt)::pdmy
 integer ::d1,fun
 fun=d1+pdmy%j
end function

function fun2(pdmy,d1)
 class(tt2)::pdmy
 integer::d1,fun2
 if(pdmy%ch == 'hello') then
  fun2=d1+pdmy%j
 else
  fun2=0
 endif
end function
end module

program main
use mod1
 type(tt2)::act(2,2,3)
 act(1,1,2)%j=3
 act(1,1,2)%ch='hello'
 call s(act)

contains
subroutine s(dum)
 class(*)::dum(2,2,3)
 select type(dum)
 type is(tt)
  print*,'101'
 type is(tt2)
  if(dum(1,1,2)%prc2(3) /= 6 .or. dum(1,1,2)%prc(3) /= 6) then
   print*,'103'
  else
   print*,'PASS'
  endif
 class default
  print*,'102'
 end select
end subroutine
end program
