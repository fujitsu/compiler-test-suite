      MODULE m570
        INTERFACE
          SUBROUTINE X(SUB)
        INTERFACE
          SUBROUTINE P()
          END SUBROUTINE
        END INTERFACE
          PROCEDURE (P)          :: SUB
          END SUBROUTINE
        END INTERFACE
      END 
      MODULE k570
        USE m570
      END 
      USE k570
      print *,'pass'
      END 
