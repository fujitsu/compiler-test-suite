module m
 type ty
 end type
 interface
  module subroutine sub
  end subroutine
 end interface
end

submodule(m)smod
contains
 module subroutine sub
  type(ty),pointer::p
 end subroutine
end

use m
call sub
print *,'pass'
end
