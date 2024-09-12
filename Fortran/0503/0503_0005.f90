module m
  implicit none
  integer :: n=1
  interface
    module subroutine sub(a)
      implicit none
      integer :: a(n)
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
call sub(a)
print *,'pass'
end
