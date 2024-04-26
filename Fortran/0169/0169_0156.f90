module m
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)smod
  bind(c)::/c/
  common/c/a
  integer ::a
contains
  module subroutine sub
    if(a/=1) print *,101
    a=10
  end subroutine
end

use m
common/c/a
bind(c)::/c/
integer ::a
a=1
call sub
if (a/=10) print *,201
print *,'pass'
end
