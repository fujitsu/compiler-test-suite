module m1
 type C_P
  integer(8)::a
 end type
end
MODULE a_mod
use m1
PRIVATE
PUBLIC :: uf
  INTERFACE
    module SUBROUTINE uf(obj)
      use m1,only:C_P
      TYPE(C_P) :: obj
    END SUBROUTINE
  END INTERFACE
END MODULE

use a_mod,only:uf
      use m1,only:C_P
      TYPE(C_P) :: obj
obj%a=9
call uf(obj)
print *,'pass'
end

submodule (a_mod) smm
contains
    module procedure  uf
      use m1,only:C_P
if (obj%a/=9) print *,201
    END 
end
