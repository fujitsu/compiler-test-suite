module m
  type ty
    integer :: a,b
  end type 
  type(ty) x
  interface
    module subroutine s
    end subroutine
  end interface
end

submodule(m)submod1
  type ty
    character :: c
  end type
  type(ty) y
contains
  subroutine sub3
    if (y%c /= 'c') print *,201
  end subroutine
end

submodule(m:submod1)submod2
  type ty
    integer :: e
  end type
  type(ty) :: z
contains
  module subroutine s
    call sub
  end subroutine
  subroutine sub
    x%a = 1
    y%c = 'c'
    z%e = 5
    if (z%e /= 5) print *,301
    call sub3
  end subroutine
end

use m
call s
if (x%a /= 1)  print *,101
print *,'pass'
end
