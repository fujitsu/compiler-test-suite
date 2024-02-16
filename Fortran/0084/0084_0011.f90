module m1
 type C_P
  integer(8)::a
 end type
end
MODULE a_mod
use m1
PRIVATE
PUBLIC :: uf
contains
    SUBROUTINE uf(obj)
      TYPE(C_P) :: obj
    END SUBROUTINE
END MODULE

use a_mod,only:uf
print *,'pass'
end

