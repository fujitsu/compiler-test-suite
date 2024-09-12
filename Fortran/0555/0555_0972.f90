module mod1
type ty
 integer::i
end type
end module

subroutine sub(o1,o2,o3)
use mod1
class(ty),pointer::o1
type(ty),pointer::o2
class(*),pointer::o3

allocate(o1)
allocate(o2)
o3=>o1
o3=>o2
nullify(o3)
end subroutine

use mod1

interface
subroutine sub(o1,o2,o3)
import ty
class(ty),pointer::o1
type(ty),pointer::o2
class(*),pointer::o3
end subroutine
end interface

class(ty),pointer::a1
type(ty),pointer::a2
class(*),pointer::a3

call sub(a1,a2,a3)
print*,'PASS'
end
