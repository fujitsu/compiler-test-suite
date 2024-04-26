module m
  type ty
    integer i
  end type
  type(ty)x
  interface 
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)smod
  type ty
    real r
  end type
  type(ty)y
end

submodule(m:smod)smod2
  type(ty)z
contains
  subroutine s
    x%i=1
    y%r=0.5
    z%r=0.5
  end subroutine
  module subroutine sub
    call s
    if (x%i/=1) print *,101
    if (abs(y%r-0.5) > 0.01) print *,102
    if (abs(z%r-0.5) > 0.01) print *,103
  end subroutine
end

use m
call sub
print *,'pass'
end
