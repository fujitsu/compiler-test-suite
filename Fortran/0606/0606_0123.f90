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
 a%ii = b%ii + 1
END SUBROUTINE
end module

use mod1
type(ty) :: obj
type(ty) :: obj_1
call sub()

contains 
subroutine sub()
obj_1%ii = 10
obj=obj_1
if(obj%ii .NE. 11) print*,"Error -1"
print*,"pass"
end subroutine 
end