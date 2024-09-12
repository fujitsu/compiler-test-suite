module m
  integer x,y
  interface
    module subroutine sub(a)
      integer :: a(x)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    if (x/=2) print *,101
    if (y/=3 ) print *,102
  end procedure
end 

use m
x=2
y=3
call sub([1,2])
print *,'pass'
end
