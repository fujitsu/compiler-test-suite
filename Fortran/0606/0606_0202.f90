module mod1

type ty
integer :: ii
contains
procedure :: prc=>equ1
procedure :: equ2
generic :: ASSIGNMENT(=) => prc , equ2
end type

type ,extends(ty) :: ty1
    real :: jj 
  contains
    procedure :: prc=>equ3
    generic :: ASSIGNMENT(=) => prc
end type


interface ASSIGNMENT(=)
SUBROUTINE equ4(a,b)
 import ty1
 class(ty1),INTENT(OUT) :: a
 real, INTENT(IN) :: b
END SUBROUTINE
end interface

contains
SUBROUTINE equ1(a,b)
 class(ty),INTENT(OUT) :: a
 integer, INTENT(IN) :: b
 a%ii = b 
 print *, "equ1 ASSIGNMENT(=) call"
END SUBROUTINE

SUBROUTINE equ2(a,b)
 class(ty),INTENT(OUT) :: a
 class(ty), INTENT(IN) :: b
 a%ii = b%ii
 print *, "equ2 ASSIGNMENT(=) call"
END SUBROUTINE


SUBROUTINE equ3(a,b)
 class(ty1),INTENT(OUT) :: a
 integer, INTENT(IN) :: b
 a%ii = b
 print *, "equ3 ASSIGNMENT(=) call"
END SUBROUTINE

end module


SUBROUTINE equ4(a,b)
 use mod1
 class(ty1),INTENT(OUT) :: a
 real, INTENT(IN) :: b
 a%jj = b
 print *, "equ4 ASSIGNMENT(=) call"
END SUBROUTINE


use mod1
call sub()
contains
subroutine sub()
type(ty1) :: obj
integer  :: val
val = 10
obj = val
if(obj%ii .NE. 10) print*,"Error -1"
obj = 100.00
if(obj%jj .NE. 100.00) print*,"Error -2"
print*,"pass"
end subroutine
end
