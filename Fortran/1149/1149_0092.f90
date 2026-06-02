module n0
procedure(character):: c
end
module n1
use n0
end
module n2
use n1
end
module m1
use n2
implicit none
private
public::sub,sub2
  interface
     module subroutine sub2()
     end subroutine
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
  write(24,'(a)') cc
  end subroutine
end
submodule (m1:submod) submod2
end
submodule (m1:submod2) submod3
end
submodule (m1:submod3) submod4
end
submodule (m1:submod4) submod5
contains
  module subroutine sub2()
  implicit none
  character::cc
  cc=c()
  write(24,'(a)') cc
  end subroutine
end submodule

use m1
call sub
call sub2

call chk
print *,'sngg152o : pass'
end
subroutine chk
character c
rewind 24
read(24,'(a)') c
if (c/='a') print *,801
read(24,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
