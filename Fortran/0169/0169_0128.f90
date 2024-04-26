module m
  integer,parameter :: i=8
  private i
  interface
    module subroutine s
    end subroutine
  end interface
end

submodule(m)smod
contains
  module subroutine s
    if (i/=8) print *,101
  end subroutine
end

use m
call s
print *,'pass'
end
