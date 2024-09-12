module mod1
type ty
integer :: ii
contains
procedure :: prc=>equ
generic :: ASSIGNMENT(=) => prc
end type
contains

SUBROUTINE equ(a,b)
 class(ty),INTENT(OUT) :: a
 integer, INTENT(IN) :: b
 a%ii = b 
END SUBROUTINE
end module

subroutine fun1()
use mod1
type(ty) :: obj
integer  :: val
val = 10
obj = val
if(obj%ii .NE. 10) print*,"Error -1"
print*,"pass"
end subroutine

use mod1
interface 
subroutine fun1()
end subroutine
end interface 
call  fun1()
end
