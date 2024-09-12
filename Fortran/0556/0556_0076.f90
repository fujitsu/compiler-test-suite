module mod1
type ty
integer :: ii
contains
procedure :: prc=>fun2
generic   :: gnr => prc
end type
contains
integer function fun2(dmy)
class(ty) :: dmy 
fun2=20
dmy%ii = fun2
end function
end module

program TEST 
use mod1
type(ty) :: obj 
obj%ii =10
print*, obj%gnr()
if(obj%gnr() .NE. 20 ) print*, "Err -1"
print*, "Pass"
end
