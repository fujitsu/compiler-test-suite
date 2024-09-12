module mod1
type ty
 integer::i
end type
end module

function fun()
use mod1
class(ty),allocatable::o1
type(ty),allocatable::o2
class(*),allocatable::o3

integer::fun
allocate(o1)
allocate(o2)

o1%i=2
o2%i=2

allocate(o3,source=o2)
deallocate(o3)
allocate(o3,source=o1)

print*,'PASS'
fun=3
end function


use mod1
interface
function fun()
import ty
class(ty),allocatable::o1
type(ty),allocatable::o2
class(*),allocatable::o3

integer::fun
end function
end interface
integer::act

act=fun()
print*,act
end
