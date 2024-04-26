module m
 type ty
 end type
 interface
  module subroutine sub
  end subroutine
 end interface
end

submodule(m)smod
  type(ty),pointer::p
contains
 module subroutine sub
 end subroutine
end

use m
call sub
print *,'pass'
end
