module m
  integer,private :: i=0
  interface
    module subroutine submod_s
    end subroutine
  end interface
contains
  subroutine s
    if (i/=0) print *,101
  end subroutine
end

module m2
  integer,private::j
end

submodule(m)submod
  use m2
  integer i
  integer j
contains
  module subroutine submod_s
    integer i
    i=100
  end subroutine
end

use m
call submod_s
call s
print *,'pass'
end
