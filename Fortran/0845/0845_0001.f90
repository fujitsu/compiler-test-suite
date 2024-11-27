module k1
  implicit none
  integer :: n
end

module k4
  implicit none
  interface
    module subroutine sub1(a) 
      use k1
      implicit none
      integer :: a(n)
    end subroutine
  end interface
end

submodule(k4)smod1
contains
  module procedure sub1
    if (size(a) /= 1) print *,1,size(a)
    if (n/=1) print *,2,n
  end procedure
end

use k4
integer::a(8)
call sub1(a)
print *,'pass'
end
