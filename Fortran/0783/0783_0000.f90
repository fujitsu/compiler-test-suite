module m
  interface
    module subroutine sub(a)
      common/com/n
      integer ::a(n)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    if (n/=3) print *,1
    if (size(a)/=3) print *,2
  end procedure
end

use m
common/com/n
integer::n
n=3
call sub([1,2])
print *,'pass'
end
