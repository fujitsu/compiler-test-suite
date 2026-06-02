module m0
implicit none
character,external:: c
end
module m1
use m0
implicit none
private ::c
  interface
     module subroutine sub()
     end subroutine
  end interface
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc
  cc=c()
  write(14,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg106n : pass'
end
subroutine chk
character c
rewind 14
read(14,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
