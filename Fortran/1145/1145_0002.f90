module m0
implicit none
type x
character ::c
end type
end
module m1
use m0   
implicit none
private ::x
  interface
     module subroutine sub()
     end subroutine
  end interface
end 
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc='a'
  type(x)::v
  v%c=cc
  write(1,'(a)') v%c
  end subroutine
end submodule 

use m1
call sub



call chk
print *,'sngg104n : pass'
end
subroutine chk
character c
rewind 1
read(1,'(a)') c
if (c/='a') print *,801
end
