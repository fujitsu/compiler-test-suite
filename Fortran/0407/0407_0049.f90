module mmm
integer ii
end
MODULE mod
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE

  PROCEDURE(sub), POINTER :: pa
END MODULE

MODULE mod1
 USE mod
 real a
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
USE mod1,ONLY: a
USE m1
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE
pa=>sub
call pa()
if (ii.ne.1) print *,'err'
print *,'pass' 
END

