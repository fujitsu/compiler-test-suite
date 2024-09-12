module m
  interface
    module subroutine sub(a)
      common/com/y,z,n
      integer ::a(n)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
data y/4/
    if (y/=4) print *,3
    if (n/=3) print *,1
    if (size(a)/=3) print *,2
  end procedure
end

use m
common/com/y,z,n
integer::n
y=1
n=3
call sub([1,2,3])
print *,'pass'
end
