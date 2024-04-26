program main
type tt
 integer::i=6
end type

integer :: rr(2,3)
type(tt)::act(2,3)

rr=fun(act)

if(rr(2,1)==6) print*,'pass'

contains
function fun(dum)
 integer::fun(2,3)
 type(tt)::dum(2,3)
 fun= dum%i
end function
end
