module m1
 type C_P
  integer(8)::add
 end type
end
MODULE a_mod
use m1
PRIVATE
PUBLIC :: uf
  INTERFACE
    module SUBROUTINE uf(obj)
      TYPE(C_P) :: obj
    END SUBROUTINE
  END INTERFACE
END MODULE

use a_mod,only:uf
use m1,only:C_P
      TYPE(C_P) :: obj
obj%add=1
call uf(obj)
print *,'pass'
end
submodule (a_mod) smm
contains
    module procedure  uf
if (obj%add/=1) print *,201
    END 
end

