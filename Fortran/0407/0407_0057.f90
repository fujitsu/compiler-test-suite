MODULE mod

PROCEDURE(sub), POINTER :: pa
contains
SUBROUTINE sub()
END SUBROUTINE
END MODULE

MODULE mod1
 USE mod
END MODULE
USE mod1,ONLY:
print *,'pass'
end 
