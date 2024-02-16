module m1
 type C_P
  integer(8)::addr
 end type
end
MODULE a_mod
use m1
PRIVATE
PUBLIC :: uf
  INTERFACE
    SUBROUTINE uf(obj)
      IMPORT :: C_P
      TYPE(C_P) :: obj
    END SUBROUTINE
  END INTERFACE
END MODULE

use a_mod,only:uf
use m1
print *,'pass'
end

