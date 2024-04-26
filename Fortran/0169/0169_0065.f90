module m
  integer,private :: a,b,c
  interface
    module subroutine ssub
    end subroutine
  end interface
contains
  subroutine sub
    a = 10
    call ssub
  end subroutine
end

submodule(m)smod
contains
  module subroutine ssub
    if (a/=10) print *,101
  end subroutine
end

use m
call sub
print *,'pass'
end
