MODULE uw
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T, C_SIZE_T
IMPLICIT NONE
PRIVATE
PUBLIC :: g123
  INTERFACE
    module SUBROUTINE g123(object1,object2,diff) 
      IMPLICIT NONE
      TYPE(C_PTR), VALUE :: object1
      TYPE(C_PTR), VALUE :: object2
      INTEGER(KIND=C_INTPTR_T) :: diff
    END SUBROUTINE
  END INTERFACE
END MODULE

use uw,only:g123
call t
print *,'pass'
end
subroutine t
use uw,only:g123
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T, C_SIZE_T
      TYPE(C_PTR) :: object1
      TYPE(C_PTR):: object2
      INTEGER(KIND=C_INTPTR_T) :: diff
call g123(object1,object2,diff)
end
submodule (uw) xmod
contains
    module procedure   g123
end
    END 

