module m0
implicit none
procedure(character):: c
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
  write(13,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg105n : pass'
end
subroutine chk
character c
rewind 13
read(13,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
