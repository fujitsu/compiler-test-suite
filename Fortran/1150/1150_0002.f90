module m1
implicit none
character,pointer:: p
private ::p
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub()
     end subroutine
  end interface
contains
subroutine ss
allocate(p,source='1')
end
end 
module n
use m1
end
module nn
use n 
end
module t1
use nn
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc
  call ss
  cc=p(:)
  write(3,'(a)') cc
  end subroutine
end submodule 
submodule (m1:submod) submod2
end
submodule (m1:submod2) submod3
end
submodule (m1:submod3) submod4
end
submodule (m1:submod4) submod5
contains
  module subroutine sub2()
  implicit none
  character::cc
  cc=p(:)
  write(3,'(a)') cc
  end subroutine
end submodule 

use t1
call sub
call sub2
call chk
print *,'sngg162o : pass'
end
subroutine chk
  character::c
rewind 3
read(3,'(a)') c;if (c/='1') print *,2001
read(3,'(a)') c;if (c/='1') print *,2001
end
