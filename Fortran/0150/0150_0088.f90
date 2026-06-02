      MODULE MOD
        INTERFACE INT
          MODULE PROCEDURE F1, F2
        END INTERFACE
      CONTAINS
        INTEGER PURE FUNCTION F1(I)
          INTEGER :: A(INT(1_4)), B(INT(1_2))
          INTEGER, PARAMETER :: KIND = SIZE(A)
          INTEGER(KIND), INTENT(IN) :: I

          F1 = I+ 1000
        END FUNCTION F1

        INTEGER PURE FUNCTION F2(J)
          INTEGER :: C(INT(2_4))
          INTEGER, PARAMETER :: KIND = SIZE(C)
          INTEGER(KIND), INTENT(IN) :: J

          F2 = J+ 2000
        END FUNCTION F2
      END MODULE MOD
use mod
if (INT(1_1)/=1001) print *,1
if (INT(1_2)/=2001) print *,2
if (INT(1_4)/=1) print *,3
if (INT(1_8)/=1) print *,4
print *,'pass'
end
