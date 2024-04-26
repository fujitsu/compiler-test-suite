module mod1
type tt
 integer::i=0
end type

type,extends(tt) :: tt2
 integer::j=0
end type
end module

program main
use mod1
interface
function fun(dum) result(res)
 import tt2
 class(*),pointer::res
 type(tt2),target::dum
end function
end interface

type(tt2)::tgt

associate(a=>fun(tgt))
 selecttype(a)
 type is(tt2)
  if(a%i==0 .and. a%j==2) print*,'pass'
 endselect
end associate
end

function fun(dum) result(res)
 use mod1
 class(*),pointer::res
 type(tt2),target::dum
 dum%j=2
 res=>dum
end function
