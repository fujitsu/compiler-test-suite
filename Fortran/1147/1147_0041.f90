module n0
implicit none
external c12345
character:: c12345
end
module e0
use n0
end
module h
use e0
end
module m1
use h
private ::c12345
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
  cc=c12345()
  write(46,'(a)') cc
  end subroutine
end submodule

use m1
character:: c12345
if (c12345()/='a') print *,1001
call sub



call chk
print *,'sngg946n : pass'
end
subroutine chk
character c
rewind 46
read(46,'(a)') c
if (c/='a') print *,801
end
character function c12345()
c12345='a'
end function
