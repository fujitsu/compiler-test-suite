program main
type tt
 integer::i=6
end type

integer :: rr
type(tt)::act

rr=fun(act)

if(rr==6) print*,'pass'

contains
function fun(dum) result(res)
 integer::res
 type(tt)::dum
 res= dum%i
end function
end
