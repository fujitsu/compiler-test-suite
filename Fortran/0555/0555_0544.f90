module mod1
type base
integer::i
contains
procedure:: prc=>fun1
procedure,NOPASS:: prc1=>fun1
generic ::gen => prc,prc1
end type
contains
function fun1(dmy)
class(base) :: dmy
integer :: fun1
 if(sizeof(dmy)/=4) print*,'201'
fun1 = dmy%i
end function
end module

use mod1
type(base) :: obj
type(base) :: obj2
obj%i=10
obj2%i=12
if(obj%gen() .NE. 10) print*,"101"

if(obj%prc1(obj2) .NE. 12) print*,"102"
print*,"PASS"
end
