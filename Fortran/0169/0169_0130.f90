module m
  integer i,j,k
  common/com/j
  common/com2/k
  interface
    module subroutine s
    end subroutine
  end interface
contains
  subroutine ss
    if (j/=10) print *,1
    if (k/=5) print *,2
  end subroutine
end

submodule(m)smod
  integer x,y
  common/com/x
  common/com2/y
contains
  module subroutine s
    x=10
    y=5
  end subroutine
end

use m
call s
call ss
print *,'pass'
end
