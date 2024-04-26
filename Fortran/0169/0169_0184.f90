module m
  type ty
    integer::i(10)
  end type
  interface
    module subroutine sub1
    end subroutine
  end interface
  type(ty)::x,y
contains
  subroutine sub2
    x%i = 10
    y%i = 20
  end subroutine
end

submodule(m)smod
  type(ty)::z
contains
  module subroutine sub1
    z=x
    call sub3
    x=y
    y=z
  end subroutine
  subroutine sub3
    if (any(z%i /=10)) print *,301
  end subroutine
end

use m
call sub2
call sub1
if (any(x%i /= 20)) print *,1
if (any(y%i /= 10)) print *,2
print *,'pass'
end
