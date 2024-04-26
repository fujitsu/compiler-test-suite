module m
  type ty
    private
    integer i,j
  end type
  interface
    module subroutine s
    end subroutine
  end interface
end

submodule(m)smod
contains
  module subroutine s
    type(ty) :: x
    x%i = 10
  end subroutine
end

use m
type(ty) x
call s
print *,'pass'
end
