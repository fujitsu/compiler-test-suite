module mmm
integer ii
end
MODULE mod
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE

PROCEDURE(sub),pointer:: pa
END MODULE

MODULE mod1
 USE mod
  PROCEDURE(sub):: paa
END MODULE
    SUBROUTINE sub()
use mmm
   ii=1
    END SUBROUTINE

MODULE m1
USE mod1,ONLY: pa
end 
MODULE m2
USE m1
end

use mmm
USE mod1,ONLY: paa
print *,'pass' 
END
    SUBROUTINE pa()
    END SUBROUTINE
    SUBROUTINE paa()
    END SUBROUTINE
