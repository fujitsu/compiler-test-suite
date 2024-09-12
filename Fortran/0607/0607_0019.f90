module mod
type tt
 integer::i=0
end type
end module

program main
use mod
type tt1
 integer::j=0
 type(tt)::obj
end type
type(tt1),target::tgt


associate(a=>fun(tgt))
 if (a(2)%obj%i == 4) then
  print *,'PASS'
 else
  print *,'FAIL'
 end if
end associate
contains
function fun(tgt) result(res)
 type(tt1),target::tgt
 type(tt1),target::res(2)
 tgt%obj%i = 4
 res(2)%obj%i= tgt%obj%i
end function
end
