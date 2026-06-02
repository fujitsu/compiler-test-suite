module m0
interface
character function c()
end function
end interface
end
module m1
use m0
private ::c
  interface
     module subroutine sub()
     end subroutine
  end interface
end
submodule (m1) submod
contains
  module subroutine sub()
  character::cc
  cc=c()
  write(8,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg087n : pass'
end
subroutine chk
character c
rewind 8
read(8,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
