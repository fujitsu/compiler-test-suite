MODULE mod
  INTERFACE aaa
   module PROCEDURE  sub
  END INTERFACE

PROCEDURE(sub), POINTER :: paa
PROCEDURE(sub2), POINTER :: pa
contains
SUBROUTINE sub2()
END SUBROUTINE
SUBROUTINE sub()
END SUBROUTINE
END MODULE

MODULE mod1
 USE mod
END MODULE
USE mod1,ONLY:
print *,'pass'
end 
