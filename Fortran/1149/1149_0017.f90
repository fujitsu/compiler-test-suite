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
private ::gen
  interface
     module subroutine sub()
     end subroutine
  end interface
  interface
     module subroutine sub2()
     end subroutine
  end interface
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc
  cc=gen()
  write(7,'(a)') cc
call sub2
  end subroutine
end submodule
submodule (m1:submod) submod2
contains
  module subroutine sub2()
  implicit none
  character::cc
  cc=gen()
  write(7,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg075o : pass'
end
subroutine chk
character c
rewind 7
read(7,'(a)') c
if (c/='a') print *,801
read(7,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
