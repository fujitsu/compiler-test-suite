module m0
implicit none
interface gen
character function c()
end function
end interface
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
  cc=gen()
  write(11,'(a)') cc
  cc=c  ()
  write(11,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg095n : pass'
end
subroutine chk
character c
rewind 11
read(11,'(a)') c
if (c/='a') print *,801
read(11,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
