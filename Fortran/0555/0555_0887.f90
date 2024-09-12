module mod1
type base
integer :: ii
contains
procedure,PASS(dmy):: prc  =>fun1
procedure,NOPASS   :: prc1 =>fun1
generic ::gen => prc,prc1
end type
contains

function fun1(xx,dmy,zz,yy)
class(base) :: dmy
class(base) :: yy
integer :: xx
integer :: zz 
integer :: fun1
fun1 = 10 +xx+zz+yy%ii+dmy%ii
fun1 = 10 
end function
end module
 
use mod1
type(base) :: obj(10)
obj%ii=10
if(obj(1)%gen(2,4,obj(1)) .NE. 10) print*,"Err 1"
print*,"Pass"
end

