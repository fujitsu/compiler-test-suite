module mod1
type tt
 integer::i=2
 contains
 procedure,nopass :: prc => fun
end type

contains
function fun(d1,d2)
 integer::d1,d2,fun
 fun=d1+d2
end function
end module

program main
use mod1
type(tt)::act(3)
call s(act)

contains
subroutine s(dum)
 class(*)::dum(3)
 select type(dum)
 type is(character(*))
  print*,'101'
 type is(tt)
  if(dum(2)%prc(2,3) == 5) print*,'PASS'
 end select
end subroutine
end program
