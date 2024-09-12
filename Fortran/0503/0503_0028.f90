module m
  integer :: j=2
end

module mm
      use m
  interface
    module subroutine sub(a,x)
      integer :: x(5)
      integer :: a(x(j))
    end subroutine
  end interface
end

submodule(mm)smod
contains
  module procedure sub
    if (size(a)/=20) print *,101
    if (j/=2) print *,102
  end procedure
end

use mm
integer :: x(5)
integer :: a(20)
x=(/ (i*10,i=1,5) /)
call sub(a,x)
print *,'pass'
end
