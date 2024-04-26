module m
  interface
    module subroutine sub1
    end subroutine
  end interface
contains
  subroutine sub
    integer:: a(101,102,103,9)
    if (any(shape(a) /= [9, 101, 102, 103])) print *,101
  end subroutine
end

submodule(m)smod
contains
  module subroutine sub1
    call sub
  end subroutine
end

use m
call sub1
print *,'pass'
end
