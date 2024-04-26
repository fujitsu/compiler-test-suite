module m
  interface
    module subroutine sub(a)
      integer,parameter :: i=8
      integer :: a(i)
      integer,parameter :: j=19
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    integer,parameter :: i=5
    integer,parameter :: j=100
    if (i/=5) print *,1
    if (j/=100) print *,2
    if (size(a) /= 8) print *,3
  end procedure
end

use m
integer::a(8)
call sub(a)
print *,'pass'
end
