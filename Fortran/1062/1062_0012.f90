module m3
  implicit none
  interface
   module subroutine sub(k)
    implicit none
    integer::k
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub
    implicit none
    if (k/=200) print *,301
  end 
end

use m3
call sub(200)
print *,'sngg162h : pass'
end
