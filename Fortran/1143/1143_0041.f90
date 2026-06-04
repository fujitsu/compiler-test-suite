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
private ::gen
  interface
     module subroutine sub()
     end subroutine
  end interface
end 
submodule (m1) submod
  implicit none
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
print *,'sngg094n : pass'
end
subroutine chk
character c
rewind 1
read(1,'(a)') c
if (c/='a') print *,801
read(1,'(a)') c
if (c/='a') print *,801

end
character function c()
c='a'
end function
