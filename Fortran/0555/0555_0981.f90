module mod
type ty
 character(8)::i
end type
end module

use mod
interface
function fun(o1)
import ty

class(ty),target::o1(2)
class(*),pointer::fun(:)
end function
end interface

class(*),pointer::act(:)
class(ty),pointer::a1(:)
allocate(a1(2))

act=>fun(a1)
end
function fun(o1)
use mod

class(ty),target::o1(2)
class(*),pointer::fun(:)
o1%i='pass'
print*,o1%i
fun=>o1
end function
