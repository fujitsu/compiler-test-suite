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
type, extends(ty)::ty1
integer :: jj
end type

class(ty), pointer :: ptr
type(ty1), target :: obj
integer  :: val
val = 10
ptr => obj
ptr = val
if(ptr%ii .NE. 10) print*,"Error -1"
print*,"pass"
end
