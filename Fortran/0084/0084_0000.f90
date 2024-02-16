MODULE fort2c_addr_mod
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR, C_INTPTR_T, C_SIZE_T
IMPLICIT NONE
PRIVATE
PUBLIC :: um_addr_diff
  INTERFACE
    SUBROUTINE um_addr_diff(object1,object2,diff) 
      IMPORT :: C_PTR, C_INTPTR_T
      IMPLICIT NONE
      TYPE(C_PTR), VALUE :: object1
      TYPE(C_PTR), VALUE :: object2
      INTEGER(KIND=C_INTPTR_T) :: diff
    END SUBROUTINE
  END INTERFACE
END MODULE

use fort2c_addr_mod,only:um_addr_diff
print *,'pass'
end

