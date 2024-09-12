module mod1
type ty
integer :: ii
contains
procedure :: add_same
procedure :: add_const
generic, PUBLIC :: operator(+) => add_const, add_same
end type
contains
function add_const(a,b)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 type(ty) :: add_const
 add_const%ii = a%ii + b
 print *,"add_const"
END function
function add_same(a,b)
 class(ty),INTENT(IN) :: a
 class(ty),INTENT(IN) :: b
 type(ty) :: add_same
 add_same%ii = a%ii + b%ii
 print *,"add_same"
END function
end module
use mod1
type(ty) :: obj
type(ty) :: j
type(ty) :: k
j%ii = 10
k%ii = 20
obj =  j + 10
if(obj%ii .NE. 20) print*,"fail"
print*,"pass"

obj =  j + k
if(obj%ii .NE. 30) print*,"fail"
print*,"pass"
end

