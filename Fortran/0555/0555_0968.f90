module main

type ty
 integer::i
end type

class(ty),pointer::o1
type(ty),pointer::o2
class(*),pointer::o3

end module

use main
allocate(o1)
allocate(o2)
o3=>o1
o3=>o2
nullify(o3)
print*,'PASS'
end
