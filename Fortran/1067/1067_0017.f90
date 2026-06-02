module m1
implicit none
character,pointer:: p
private ::p
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub()
     end subroutine
     module subroutine ss ()
     end subroutine
module subroutine chk
end
  end interface
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
submodule (m1) modx
contains
module subroutine ss
allocate(p,source='1')
end
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc
  call ss
  cc=p(:)
  write(3,'(a)') cc
  end
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
  end
module subroutine chk
  character::c
rewind 3
read(3,'(a)') c;if (c/='1') print *,2001
read(3,'(a)') c;if (c/='1') print *,2001
end
end submodule

use t1
call sub
call sub2
call chk
print *,'sngg404o : pass'
end
