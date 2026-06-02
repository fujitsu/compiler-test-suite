module n
implicit none
intrinsic:: char
end
module m1
use n
implicit none
private ::char
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
  cc=char(ichar('a'))
  write(1,'(a)') cc
  end subroutine
end submodule 

use m1
call sub



call chk
print *,'sngg110n : pass'
end
subroutine chk
character c
rewind 1
read(1,'(a)') c
if (c/='a') print *,801
end
