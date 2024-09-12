
type ty
 character(8)::i
end type

class(ty),allocatable::act(:)
class(ty),pointer::a1(:)
allocate(a1(2))

allocate(act,source=fun(a1))
print*,act%i
contains
function fun(o1)

class(ty)::o1(2)
class(ty),allocatable::fun(:)
o1%i='pass'
allocate(fun,source=o1)
end function
end
