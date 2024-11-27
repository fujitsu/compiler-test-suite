      PROGRAM MAIN
        INTERFACE
          FUNCTION test(x)
            IMPLICIT NONE
            REAL             :: test
            REAL, INTENT(IN) :: x(:)
          END FUNCTION test
        END INTERFACE
        REAL           :: z(13)
        REAL           :: x
        x = test(z)
        if (x/=0)print *,'error-2'
        print *,'pass'
      END PROGRAM MAIN

      FUNCTION test(x)
        IMPLICIT NONE
        REAL             :: test
        REAL, INTENT(IN) :: x(:)
        INTEGER          :: d
        d = SIZE(x,1)
        if (d/=13)print *,'error'
        test = 0.0
      END FUNCTION test
