MODULE mod
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE 
  END INTERFACE

  PROCEDURE(sub)          :: pa
END MODULE

MODULE mod1
 USE mod
 real a
END MODULE 

USE mod1,ONLY: a
print *,'pass'
END 

    SUBROUTINE pa()
    END SUBROUTINE 
