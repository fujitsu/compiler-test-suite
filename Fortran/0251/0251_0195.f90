
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
call ss

contains
subroutine ss
block
type(ty0) :: obj1
if(obj1%ii .eq. 10) print*,'pass'
end block
end subroutine
End

