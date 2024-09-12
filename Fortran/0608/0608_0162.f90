MODULE mod1
IMPLICIT NONE
    INTEGER :: COUNTER=0
    TYPE ty
        INTEGER :: ii = 10
        CONTAINS
            FINAL::destructor
    END TYPE ty

    CONTAINS
        SUBROUTINE destructor( dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy
              COUNTER=COUNTER+1
        END SUBROUTINE destructor

END MODULE mod1

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE

    PRINT *,Foo()
    if(COUNTER > 0) then
      print *, "PASS"
    end if

    CONTAINS
        FUNCTION Foo() RESULT(ty_res)
         IMPLICIT NONE
         TYPE(ty) :: ty_res
         ty_res%ii = 100
         IF (ty_res%ii .EQ. 20)  PRINT*,'ERROR'
        END FUNCTION Foo
END PROGRAM MAIN
