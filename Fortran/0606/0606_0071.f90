module mod1
type ty
integer :: ii
contains
procedure :: equ
generic :: ASSIGNMENT(=) => equ 
end type

type ty1
 integer :: jj
 integer :: kk
end type
contains
SUBROUTINE equ(a,b)
 class(ty),INTENT(OUT) :: a
 type(ty1),INTENT(IN) :: b
 
 a%ii = b%jj + 1
 print *, "equ"
END SUBROUTINE
end module

use mod1
type(ty) :: obj
type(ty1) :: obj_1
obj_1%jj = 10
obj=obj_1

if(obj%ii .NE. 11) print*,"Fail"
print*,"pass"
end

