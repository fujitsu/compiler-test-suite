module mod1
type tt
 integer::i=0
end type
end module

program main
use mod1
interface
function fun(dum) 
 import tt
 type(tt)::fun(4,4,5,4,5)
 type(tt)::dum(:,:,:,:,:)
end function
end interface

type(tt)::tgt(4,4,5,4,5)
tgt(2,3,3,1,5)%i=5

associate(a=>fun(tgt))
  if(a(2,3,3,1,5)%i==2) print*,'pass'
end associate
end

function fun(dum)            
 use mod1
 type(tt)::fun(4,4,5,4,5)
 type(tt)::dum(:,:,:,:,:)
 dum(2,3,3,1,5)%i=2
 fun=dum
end function
