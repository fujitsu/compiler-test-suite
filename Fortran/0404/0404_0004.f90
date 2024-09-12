      MODULE m569
        INTERFACE
          SUBROUTINE P()
          END SUBROUTINE
        END INTERFACE
        INTERFACE
          SUBROUTINE X(SUB)
          import::P
          PROCEDURE (P)          :: SUB
          END SUBROUTINE
        END INTERFACE
      END 
      MODULE k569
        USE m569
      END 
      USE k569
      print *,'pass'
      END 
