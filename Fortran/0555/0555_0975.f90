module mod1
type ty
 integer::i
end type
end module

function fun(o1,o2,o3)
use mod1
class(ty),allocatable::o1
type(ty),allocatable::o2
class(*),allocatable::o3

integer::fun
allocate(o1)
allocate(o2)
o1%i=2
o2=ty(2)
allocate(o3,source=o1)
deallocate(o3)
allocate(o3,source=o2)
print*,'PASS'
fun=3
end function


use mod1
interface
function fun(o1,o2,o3)
use mod1
class(ty),allocatable::o1
type(ty),allocatable::o2
class(*),allocatable::o3
integer::fun
end function
end interface
integer::act

class(ty),allocatable::a1
type(ty),allocatable::a2
class(*),allocatable::a3

act=fun(a1,a2,a3)
print*,act
end
