module mod1
type ty
integer :: ii
contains
procedure :: prc=>equ1
generic :: ASSIGNMENT(=) => prc
end type

contains
SUBROUTINE equ1(a,b)
 class(ty),INTENT(OUT) :: a
 integer, INTENT(IN) :: b
 a%ii = b 
END SUBROUTINE
end module

module m2
use mod1
type, extends(ty)::ty1
integer :: jj
end type

type, extends(ty1)::ty2
integer :: kk
end type
end  module m2

use m2
type(ty2) :: obj
integer  :: val
val = 10
obj = val
if(obj%ii .NE. 10) print*,"Error -1"
print*,"pass"
end
