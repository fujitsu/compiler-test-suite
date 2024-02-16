MODULE bhd

USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
IMPLICIT NONE
PRIVATE
PUBLIC :: z_1
INTERFACE
MODULE SUBROUTINE z_1(yz1) 
IMPLICIT NONE
TYPE(C_PTR), VALUE :: yz1
END SUBROUTINE
END INTERFACE
END MODULE

use bhd,only:z_1
call sub

print *,'pass'
end
subroutine sub
use bhd,only:z_1
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T
IMPLICIT NONE
TYPE(C_PTR) :: yz1
call  z_1(yz1)
end

submodule (bhd) smod
contains
MODULE procedure z_1
IMPLICIT NONE
END 
end
