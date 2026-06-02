module mod1
type ty
integer :: ii
real    :: nn
contains
procedure :: prc=>equ1
procedure :: prc1=>equ3
generic :: ASSIGNMENT(=) => prc1, prc
end type

type, extends(ty)::ty0
integer :: kk
end type

type, extends(ty0)::ty1
integer :: jj
contains
procedure :: prc  => equ2 
procedure :: prc1 => equ4
generic :: ASSIGNMENT(=) => prc1, prc
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
 a%ii = b
END SUBROUTINE

SUBROUTINE equ3(a,b)
 class(ty),INTENT(OUT) :: a
 real, INTENT(IN) :: b
 a%nn = b 
END SUBROUTINE

SUBROUTINE equ4(a,b)
 class(ty1),INTENT(OUT) :: a
 real, INTENT(IN) :: b
 a%nn = b 
END SUBROUTINE

end module

use mod1
type(ty1), target  :: obj
class(ty), pointer :: ptr
integer  :: val
val = 10

obj%ii=0
obj%nn=0
ptr=>obj
ptr = val
if(ptr%ii .NE. 10) print*,"Error -1"
ptr = 20.50 
if(ptr%nn .NE. 20.50) print*,"Error -2"
print*,"pass"
end
