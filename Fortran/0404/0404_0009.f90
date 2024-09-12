      MODULE m572
        INTERFACE
          SUBROUTINE X(SUB)
           INTERFACE
             SUBROUTINE P()
             END SUBROUTINE
           END INTERFACE
           PROCEDURE (P)          :: SUB
          END SUBROUTINE
        END INTERFACE
        INTERFACE
          SUBROUTINE D()
          END SUBROUTINE
        END INTERFACE
      END 
      MODULE k572
        USE m572
         INTEGER P
      contains
        subroutine sss
         P=1
         if (P/=1) print *,201
        end subroutine
      END 
      USE k572
      print *,'pass'
      END 
