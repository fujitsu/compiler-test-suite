module mod1
type ty
 integer::i
end type
end module

use mod1
interface
function fun(o1)
import ty
class(ty),target::o1(2)
class(ty),pointer::fun(:)
end function
end interface

class(ty),pointer::act(:)
class(ty),pointer::a1(:)
allocate(a1(2))

act=>fun(a1)
print*,'PASS'
end
function fun(o1)
use mod1
class(ty),target::o1(2)
class(ty),pointer::fun(:)
fun=>o1
end function
