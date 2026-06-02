module m0
character ::c
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
  character::cc='a'
  c=cc
  write(1,'(a)') c
  end subroutine
end submodule 

use m1
call sub



call chk
print *,'sngg081n : pass'
end
subroutine chk
character c
rewind 1
read(1,'(a)') c
if (c/='a') print *,801
end
