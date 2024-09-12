module mm
      common/com/n
end
module m
  interface
    module subroutine sub(a)
      use mm
      integer ::a(n)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
      use mm
    if (n/=3) print *,1
    if (size(a)/=3) print *,2
  end procedure
end

use m
common/com/n
integer::n
n=3
call sub([1,2,3])
print *,'pass'
end
