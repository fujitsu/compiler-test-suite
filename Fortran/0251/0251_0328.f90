MODULE mod1
    IMPLICIT NONE
    TYPE ty0
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest
    END TYPE

CONTAINS
    SUBROUTINE dest(dmy)
    type(ty0) :: dmy(:)
    PRINT*,'call of dest', dmy(1)
    END SUBROUTINE
END MODULE

use mod1
interface
function ff()
character(4) :: ff
end function

function ee(d)
integer :: d
character(4) :: ee
end function
end interface
character(4) :: ch
ch = ee(4)
print*,ch
End

function ff()
use mod1
character(4) :: ff,ee
integer :: d
entry ee(d)
print*,'within entry'
block
type(ty0) :: obj1(d)
print*,obj1(2)
ff='fail'
ee='pass'
block
type(ty0) :: obj1(d)
obj1%ii=20
print*,obj1(3)
end block

block
type(ty0) :: obj1(d)
obj1%ii=30
print*,obj1(4)
end block
end block
print*,'after block'
end function
