MODULE a_mod
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
IMPLICIT NONE
PRIVATE
PUBLIC :: uf
  INTERFACE
    module SUBROUTINE uf(object1)
      IMPLICIT NONE
      TYPE(C_PTR), VALUE :: object1
    END SUBROUTINE
  END INTERFACE
END MODULE

use a_mod,only:uf
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
      TYPE(C_PTR) :: object1
call uf(object1)
print *,'pass'
end

submodule (a_mod) sm
contains
    module procedure uf 
      IMPLICIT NONE
call uuf(object1)
contains
    SUBROUTINE uuf(object1)
      IMPLICIT NONE
      TYPE(C_PTR), VALUE :: object1
    END SUBROUTINE
    END 
end
