module mod1
type base
integer :: ii
contains
procedure,PASS(dmy):: prc  =>fun1
procedure,NOPASS :: prc1 =>fun1
generic ::gen => prc,prc1
end type
contains
function fun1(dmy)
class(base) :: dmy
fun1 = 10+dmy%ii
end function
end module
 
use mod1
type(base) :: obj
obj%ii=10
if(obj%gen() .NE. 20) print*,"Err 1"
print*,"Pass"
end

