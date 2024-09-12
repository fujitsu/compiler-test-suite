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

subroutine fun1()
type(ty) :: obj
integer  :: val
call sub()
contains
subroutine sub()
val = 10
obj = val
if(obj%ii .NE. 10) print*,"Error -1"
print*,"pass"
end subroutine
end subroutine 

end module

use mod1
call  fun1()
end
