type ty
 integer::i
end type

type(ty)::act(2)

act=fun()
if (any(act%i/=2) ) print *,901
print*,'pass'
contains
function fun()

type(ty),save,target::o1(2)
class(ty),pointer::fun(:)
o1%i=2
fun=>o1
end function
end
