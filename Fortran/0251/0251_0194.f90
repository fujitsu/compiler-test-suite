
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

    subroutine ss
      print*,'within subroutine'
      block
        type(ty0) :: obj1
        print*,obj1
      end block
      print*,'after block'
    end subroutine
END MODULE

use mod1
call ss

End

