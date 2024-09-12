module mod1
type base
integer :: ii
contains
procedure:: prc=>fun1
procedure,NOPASS:: prc1=>fun1
generic ::gen => prc,prc1
end type
contains
function fun1(dmy)
class(base) :: dmy
integer :: fun1
fun1 = dmy%ii
end function
end module

use mod1

type :: t2
type(base) :: obj
end type 
type (t2) :: t2obj(10)
t2obj(1)%obj%ii=10
if(t2obj(1)%obj%gen().NE. 10) print*,"Err 1"
print*,"Pass"
end

