MODULE mod1
    IMPLICIT NONE
    TYPE ty0
    INTEGER :: ii = 10
    CHARACTER(4) nam
    CONTAINS
         FINAL::dest
    END TYPE

CONTAINS
    SUBROUTINE dest(dmy)
    type(ty0) :: dmy(:)
    PRINT*,'call of dest for ', dmy(1)%nam
    END SUBROUTINE
END MODULE

use mod1
call ss(4)

contains
subroutine ss(d)
integer d
print*,'within subroutine'
block
type(ty0) :: obj1(d)
obj1%nam = 'xxxx'
obj1(1)%nam = 'obj1'
print*,obj1(1)%nam
end block
print*,'after block'
end subroutine
End

