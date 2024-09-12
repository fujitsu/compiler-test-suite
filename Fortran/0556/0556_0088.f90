
type ty
 integer::i
end type

type(ty)::act(2)

act=fun()
print*,act%i
contains
function fun()

type(ty),save,target::o1(2)
class(ty),pointer::fun(:)
o1(1)%i=2
o1(2)%i=3
fun=>o1
print*,'PASS'
end function
end
