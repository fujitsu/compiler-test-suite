module m
type ty
 integer::i
end type
contains
function fun(o1)

class(ty),target::o1(2)
class(ty),pointer::fun(:)
fun=>o1
end function
end module

program main
use m

class(ty),pointer::act(:)
class(ty),pointer::a1(:)
allocate(a1(2))

act=>fun(a1)
print*,'PASS'
end
