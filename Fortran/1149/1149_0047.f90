module m0
implicit none
interface gen
  procedure::c
end interface
contains
character function c()
c='a'
end function
end
module m1
use m0
implicit none
private ::c,gen
  interface
     module subroutine sub()
     end subroutine
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
  write(9,'(a)') cc
  end subroutine
end submodule
submodule (m1:submod) submod1
end
submodule (m1:submod1) submod2
end
submodule (m1:submod2) submod3
end
submodule (m1:submod3) submod4
contains
  module subroutine sub2()
  implicit none
  character::cc
  cc=gen()
  write(9,'(a)') cc
  end subroutine
end submodule

use m1
call sub
call sub2



call chk
print *,'sngg105o : pass'
end
subroutine chk
character c
rewind 9
read(9,'(a)') c
if (c/='a') print *,801
read(9,'(a)') c
if (c/='a') print *,801
end
