module typedecl
  type ty
    sequence
    integer ::i
  end type
end

module typedecl2
  type ty
    sequence
    integer :: i
  end type
end

module m
  interface
    module subroutine sub(a)
      use typedecl
      type(ty)::a
    end subroutine
  end interface
contains
  module subroutine sub(a)
    use typedecl2
    type(ty)::a
    if (a%i /= 10) print *,'ng'
  end subroutine
end

use m
use typedecl
type(ty) :: a
a%i=10
call sub(a)
print *,'pass'
end
