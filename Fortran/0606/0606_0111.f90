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

use mod1
call sub()
contains
subroutine sub()
type(ty) :: obj
integer  :: val
val = 10
obj = val
if(obj%ii .NE. 10) print*,"Error -1"
print*,"pass"
end subroutine
end
