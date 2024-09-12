module mmm
integer ii
end
MODULE mod
  INTERFACE sub
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE

  PROCEDURE(sub), POINTER :: pa
END MODULE

MODULE mod1
 USE mod
 real a
END MODULE
MODULE mod2
 USE mod
END MODULE
MODULE mod3
 USE mod
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
USE mod1,ONLY:
USE mod2,ONLY:pa
USE mod3,ONLY:sub
pa=>sub
call pa()
if (ii.ne.1) print *,'err'
print *,'pass' 
END

