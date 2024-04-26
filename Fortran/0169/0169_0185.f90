module m
  type ty
    integer::i(10)
  end type
  interface
    module subroutine sub
    end subroutine
  end interface
  type(ty)::x
contains
  subroutine sub1
    x%i = 10
  end subroutine
end

submodule(m)smod
  type(ty)::y
contains
  subroutine sub2
    y%i = 20
  end subroutine
  subroutine sub4
    if (any(y%i /= 10)) print *,2
  end subroutine
end

submodule(m:smod)ssmod
  type(ty)::z
contains
  module subroutine sub
    call sub1
    call sub2
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
call sub
if (any(x%i /= 20)) print *,1
print *,'pass'
end
