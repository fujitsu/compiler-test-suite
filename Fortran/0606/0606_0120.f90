module mod1
type ty
integer :: ii
contains
procedure, pass(b)  :: prc=>equ
generic :: ASSIGNMENT(=) => prc
end type
contains
SUBROUTINE equ(a,b)
 class(ty),INTENT(IN) :: b
 integer, INTENT(INOUT) :: a 
 a=b%ii
END SUBROUTINE
end module

subroutine fun1 ()
use mod1
type(ty) :: obj
integer  :: val
obj%ii = 10
val = obj
if(val .NE. 10) print*,"Error -1"
print*,"pass"
end subroutine

use mod1
interface 
subroutine fun1()
end subroutine
end interface
call fun1()
end
