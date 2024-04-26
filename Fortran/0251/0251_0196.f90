
MODULE mod1
    IMPLICIT NONE
    TYPE ty0
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest
    END TYPE

CONTAINS
    SUBROUTINE dest(dmy)
    type(ty0) :: dmy
    PRINT*,'call of dest', dmy
    END SUBROUTINE
END MODULE

use mod1
character(4) :: ch
ch = ff()
print*,ch

contains
function ff()
character(4) :: ff
print*,'within function'
block
type(ty0) :: obj1
print*,obj1
ff='pass'
end block
print*,'after block'
end function
End

