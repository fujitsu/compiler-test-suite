module mmm
integer ii
end
MODULE mod
  INTERFACE
    SUBROUTINE sub()
    END SUBROUTINE
  END INTERFACE

type ty1
  PROCEDURE(sub),pointer,nopass:: pa
end type
END MODULE

MODULE mod1
 USE mod
type ty2
 integer :: aa
end type
type ty3
private
  PROCEDURE(sub), POINTER ,nopass:: pa
end type
END MODULE
    SUBROUTINE sub()
use mmm
   ii=1
write(1,*) 100
    END SUBROUTINE

MODULE m1
USE mod1,ONLY: ty1
end 
MODULE m2
USE m1
end

use mmm
USE mod1,ONLY: ty2,sub
USE m2
type(ty1)::v
v%pa=> sub
call v%pa
rewind 1
read(1,*) k
if (k/=100) print *,201
print *,'pass' 
END
