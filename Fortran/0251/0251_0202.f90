
MODULE mod1
    IMPLICIT NONE
    TYPE ty0
    INTEGER :: ii = 10
    CHARACTER(4) :: nam
    CONTAINS
         FINAL::dest
    END TYPE

CONTAINS
    SUBROUTINE dest(dmy)
    type(ty0) :: dmy(:)
    PRINT*,'call of dest', dmy(1)%ii
    END SUBROUTINE
END MODULE

use mod1
interface
function ff(d)
integer ::d
character(d) :: ff
end function
end interface

character(4) :: ch
ch=ff(4)
print*,ch

End

function ff(d)
use mod1
integer :: d
character(d) :: ff
print*,'within external function'
block
type(ty0) :: obj1(d)
obj1(1)%nam='pass'
ff=obj1(1)%nam
end block
print*,'after block'
end function

