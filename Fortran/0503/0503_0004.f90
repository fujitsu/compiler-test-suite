module m2
  implicit none
  integer :: n=-1000
end

module m
  implicit none
  interface
    module subroutine sub(a)
      use m2
      implicit none
      integer :: a(n)
      integer :: k=100
    end subroutine
  end interface
end

submodule(m)smod
      integer :: k=200
  integer :: n=2000
contains
    module procedure  sub
      implicit none
    if (size(a) /= 1) print *,1,size(a)
     if(n/=1) print *,201,n
     if(k/=200) print *,202,k
  end 
end

use m
integer::a(8)
call set_m2_n
call sub(a)
print *,'pass'
end
subroutine set_m2_n
use m2
n=1
end
