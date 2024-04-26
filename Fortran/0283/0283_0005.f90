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
function fun(dum) 
 import tt2
 class(*),pointer::fun(:,:,:,:)
 type(tt2),target::dum(2,3,2,3)
end function
end interface

type(tt2)::tgt(2,3,2,3)

associate(a=>fun(tgt))
 selecttype(a)
 type is(tt2)
  if(a(1,3,1,3)%i==0 .and. a(1,3,1,3)%j==2) print*,'pass'
 endselect
end associate
end

function fun(dum)
 use mod1
 class(*),pointer::fun(:,:,:,:)
 type(tt2),target::dum(2,3,2,3)
 dum(1,3,1,3)%j=2
 fun=>dum
end function
