module m1
 type C_P
  integer(8)::a
 end type
end
MODULE a_mod
use m1
PRIVATE
PUBLIC :: uf,f
interface
    module SUBROUTINE uf(obj)
      TYPE(C_P) :: obj
    END SUBROUTINE
    module type(C_P) function f() 
    end function
end interface
END MODULE

use a_mod,only:uf,f
call uf(f())
print *,'pass'
end

submodule (a_mod) smm
contains
    module procedure  uf
      if (obj%a/=1) print *,201
    END 
    module procedure  f 
    f=C_P(1)
    end 
END 
