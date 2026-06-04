module m0
implicit none
character ::c
end
module m1
use m0
implicit none
private
public::sub
  interface
     module subroutine sub()
     end subroutine
  end interface
end
submodule (m1) submod
  interface
     module subroutine sub2()
     end subroutine
  end interface
contains
  module subroutine sub()
  implicit none
  character::cc='a'
  c=cc
  write(4,'(a)') c
call sub2
  end subroutine
end submodule
submodule (m1:submod) submod2
contains
  module subroutine sub2()
  implicit none
  character::cc='a'
  c=cc
  write(4,'(a)') c
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg074o : pass'
end
subroutine chk
character c
rewind 4
read(4,'(a)') c
if (c/='a') print *,801
read(4,'(a)') c
if (c/='a') print *,801
end
