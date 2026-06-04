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
private ::gen
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
  cc=gen()
  write(1,'(a)') cc
  cc=c  ()
  write(1,'(a)') cc
  end subroutine
end submodule 

use m1
call sub



call chk
print *,'sngg099n : pass'
end
subroutine chk
character c
rewind 1
read(1,'(a)') c
if (c/='a') print *,801
read(1,'(a)') c
if (c/='a') print *,801
end
