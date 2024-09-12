module mod1
type ty
 integer::i
end type
end module

function fun(o1,o2,o3)
use mod1
class(ty),pointer::o1
type(ty),pointer::o2
class(*),pointer::o3

integer::fun
allocate(o1)
allocate(o2)
o3=>o1
o3=>o2
nullify(o3)
print*,'PASS'
fun=3
end function

use mod1
interface
function fun(o1,o2,o3)
import ty
class(ty),pointer::o1
type(ty),pointer::o2
class(*),pointer::o3
integer::fun
end function
end interface
integer::act

class(ty),pointer::a1
type(ty),pointer::a2
class(*),pointer::a3

act=fun(a1,a2,a3)
print*,act
end
