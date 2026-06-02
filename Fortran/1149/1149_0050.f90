module m0
implicit none
procedure(character):: c
end
module m1
use m0
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
  write(12,'(a)') cc
  end subroutine
end submodule
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
  write(12,'(a)') cc
  end subroutine
end submodule

use m1
call sub
call sub2



call chk
print *,'sngg108o : pass'
end
subroutine chk
character c
rewind 12
read(12,'(a)') c
if (c/='a') print *,801
read(12,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
