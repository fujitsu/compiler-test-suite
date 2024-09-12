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

use mod1
type(ty) :: obj
integer  :: val
obj%ii = 10
val = obj
if(val .NE. 10) print*,"Error -1"
print*,"pass"
end
