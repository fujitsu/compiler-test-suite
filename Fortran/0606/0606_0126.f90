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
 class(ty),INTENT(IN) :: b
 a%ii = b%ii 
END SUBROUTINE
end module

subroutine  fun1()
use mod1
type(ty) :: obj
type(ty) :: obj_1
obj_1%ii = 10
obj=obj_1
if(obj%ii .NE. 10) print*,"Error -1"
print*,"pass"
end subroutine

use mod1
interface 
subroutine  fun1()
end subroutine
end interface 
call fun1()
end
