      MODULE m571
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
        INTERFACE
          SUBROUTINE D()
          END SUBROUTINE
        END INTERFACE
      END 
      MODULE k571
        USE m571
      END 
      USE k571
      print *,'pass'
      END 
