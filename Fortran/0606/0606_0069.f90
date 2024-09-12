module mod1
type ty
integer :: ii
contains
procedure :: equ
generic, PRIVATE:: ASSIGNMENT(=) => equ 
end type
contains
SUBROUTINE equ(a,b)
 class(ty),INTENT(OUT) :: a
 class(ty),INTENT(IN) :: b
 
 a%ii = b%ii + 1
 print *, "equ"
END SUBROUTINE

SUBROUTINE fun()
type(ty) :: obj
type(ty) :: obj_1
obj_1%ii = 10
obj=obj_1

if(obj%ii .NE. 11) print*,"Fail"
print*,"pass"
END SUBROUTINE
end module

use mod1
call fun
end

