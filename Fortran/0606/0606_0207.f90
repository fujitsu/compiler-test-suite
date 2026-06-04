module mod1
type ty
integer :: ii
contains
procedure :: prc=>equ1
generic :: ASSIGNMENT(=) => prc
end type

type, extends(ty)::ty1
integer :: jj
contains
procedure :: prc =>equ2 
generic :: ASSIGNMENT(=) => prc
end type

contains
SUBROUTINE equ1(a,b)
 class(ty),INTENT(OUT) :: a
 integer, INTENT(IN) :: b
 a%ii = b 
END SUBROUTINE

SUBROUTINE equ2(a,b)
 class(ty1),INTENT(OUT) :: a
 integer, INTENT(IN) :: b
 a%ii = b*2
END SUBROUTINE

end module

use mod1
type(ty1), target :: obj
class(ty), pointer :: ptr
integer  :: val
ptr=>obj
val = 10
ptr = val
if(ptr%ii .NE. val*2) print*,"Error -1"
print*,"pass"
end
