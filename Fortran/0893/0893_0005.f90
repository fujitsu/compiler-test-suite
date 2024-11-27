MODULE mod1
IMPLICIT NONE

TYPE ty(k1,l1)
      INTEGER,KIND :: k1
        INTEGER,LEN :: l1
          INTEGER :: arr(l1)
    END TYPE
    interface
    FUNCTION fun1(d1)
    IMPORT ty
    TYPE(ty(2,4)),intent(OUT) :: d1
    integer :: fun1
    END FUNCTION
    END INTERFACE

    END MODULE
    end
