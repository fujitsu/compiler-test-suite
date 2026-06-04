module m2
  implicit none
  integer :: n=1
end

module m3
  implicit none
  integer :: n=1000
  interface
    module subroutine sub()
      implicit none
    end subroutine
  end interface
end

submodule(m3)smod
contains
    module subroutine sub()
  implicit none
if (n/=1000)print *,200
  end
end

use m3
call sub()
print *,'sngg201h : pass'
end
