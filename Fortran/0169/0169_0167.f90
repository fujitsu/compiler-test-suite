module mod
  implicit type(ty) (a-z) 
  type ty
    integer x
  end type
  integer b
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(mod)smod1
  implicit integer (a-z) 
contains
  module subroutine sub
    a=1
    b=a
  end subroutine
end

use mod
call sub
if (b/=1) print *,101
print *,'pass'
end
