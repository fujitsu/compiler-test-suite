module mmm
integer ii
end
MODULE mod
  INTERFACE suba
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE

private :: sub
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
  INTERFACE 
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE
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
USE mod3,ONLY:suba
pa=>sub
call pa()
if (ii.ne.1) print *,'err'
print *,'pass' 
END

