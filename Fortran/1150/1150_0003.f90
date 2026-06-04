module m1
implicit none
character,pointer:: p
private
public:: p,sub,sub2
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
  write(4,'(a)') cc
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
  write(4,'(a)') cc
  end subroutine
end submodule 

use t1
call sub
call sub2
call chk
print *,'sngg163o : pass'
end
subroutine chk
  character::c
rewind 4
read(4,'(a)') c;if (c/='1') print *,2001
read(4,'(a)') c;if (c/='1') print *,2001
end
