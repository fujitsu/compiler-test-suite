module mod1
type tt
 integer::i=0
end type
end module

program main
use mod1
interface
function fun(dum) result(res)
 import tt
 type(tt)::res
 type(tt)::dum
end function
end interface

type(tt)::tgt
tgt%i=5

associate(a=>fun(tgt))
  if(a%i==tgt%i) print*,'pass'
end associate
end

function fun(dum) result(res)
 use mod1
 type(tt)::res
 type(tt)::dum
 dum%i=2
 res=dum
end function
