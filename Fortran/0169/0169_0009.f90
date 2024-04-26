module m
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)smod
  integer::a(101,102,103,9)
contains
  module subroutine sub
    if (any(shape(a) /= [101,102,103,9])) print *,101
  end subroutine
end

use m
call sub
print *,'pass'
end
