
type ty
 character(8)::i
end type

class(*),allocatable::act(:)
class(ty),pointer::a1(:)
allocate(a1(2))

allocate(act,source=fun(a1))
contains
function fun(o1)

class(ty)::o1(2)
class(*),allocatable::fun(:)
o1%i='pass'
print*,'PASS'
allocate(fun,source=o1)
end function
end
