module mmm
integer ii
end
MODULE mod
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE

type ty1
  PROCEDURE(sub), POINTER ,nopass:: pa
end type
END MODULE

MODULE mod1
 USE mod
type ty2
 integer :: aa
end type
type ty3
  PROCEDURE(sub), POINTER ,nopass:: pa
end type
END MODULE
    SUBROUTINE sub()
use mmm
   ii=1
    END SUBROUTINE

MODULE m1
USE mod1,ONLY: ty1

end 
MODULE m2
USE m1
end

use mmm
USE mod1,ONLY: ty3
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE
type(ty3) :: s
s%pa=>sub
call s%pa()
if (ii.ne.1) print *,'err'
print *,'pass' 
END
