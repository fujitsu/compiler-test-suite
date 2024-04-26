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
interface
function ff()
character(4) :: ff
end function

function ee()
character(4) :: ee
end function
end interface
character(4) :: ch
ch=ee()
print*,ch
End

function ff()
use mod1
character(4) :: ff,ee
print*,'within function FAIL'
entry ee
print*,'within entry'
block
type(ty0) :: obj1
print*,obj1
ff='fail'
ee='pass'
end block
print*,'after block'
end function
