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
      END 
      USE k572
      print *,'pass'
      END 
