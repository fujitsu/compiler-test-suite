module m2
  implicit none
  integer :: n=-1000
end

module m
  implicit none
  integer :: n
  interface
    module subroutine sub(a)
      use m2
      implicit none
      integer :: a(n)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    use m2
    if (size(a) /= 1) print *,1,size(a)
     if(n/=1) print *,201,n
  end procedure
end

use m
integer::a(8)
n=1000
call set_m2_n
call sub(a)
print *,'pass'
end
subroutine set_m2_n
use m2
n=1
end

