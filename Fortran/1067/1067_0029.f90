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
  module procedure  sub
  implicit none
  character::cc
  cc=gen()
  write(9,'(a)') cc
call sub2
  end
end submodule
submodule (m1:submod) submod2
contains
  module procedure  sub2
  implicit none
  character::cc
  cc=gen()
  write(9,'(a)') cc
  end
end submodule

use m1
call sub



call chk
print *,'sngg417o : pass'
end
subroutine chk
character c
rewind 9
read(9,'(a)') c
if (c/='a') print *,801
read(9,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
