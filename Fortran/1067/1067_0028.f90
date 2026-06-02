module m0
implicit none
character ::c
end
module m1
use m0
implicit none
private ::c
  interface
     module subroutine chk(c)
       character(*)::c
     end subroutine
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
  module procedure  sub
  implicit none
  character::cc='a'
  c=cc
  write(8,'(a)') c
call sub2
  end
end submodule
submodule (m1:submod) submod2
contains
  module procedure  sub2
  implicit none
  character::cc='a'
  c=cc
  write(8,'(a)') c
  end
module procedure  chk
rewind 8
read(8,'(a)') c
if (c/='a') print *,801
read(8,'(a)') c
if (c/='a') print *,801
end
end submodule

use m1
  character::c
call sub
call chk(c)
print *,'sngg415o : pass'
end
