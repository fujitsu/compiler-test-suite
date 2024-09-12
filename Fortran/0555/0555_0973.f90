module mod1
type ty
 integer::i
end type
end module

subroutine sub(o1,o2,o3)
use mod1
class(ty),allocatable::o1
type(ty),allocatable::o2
class(*),allocatable::o3

allocate(o1)
allocate(o2)
o1%i=2
o2=ty(2)
allocate(o3,source=o1)
deallocate(o3)
allocate(o3,source=o2)
print*,'PASS'
end subroutine

use mod1
interface
subroutine sub(o1,o2,o3)
import ty
class(ty),allocatable::o1
type(ty),allocatable::o2
class(*),allocatable::o3
end subroutine
end interface
class(ty),allocatable::a1
type(ty),allocatable::a2
class(*),allocatable::a3

call sub(a1,a2,a3)
end
