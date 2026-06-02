module n0
implicit none
procedure(character):: c
end
module m1
use n0
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
  write(11,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg909n : pass'
end
subroutine chk
character c
rewind 11
read(11,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
