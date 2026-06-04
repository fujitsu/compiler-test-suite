module m1
implicit none
character,pointer:: p
private ::p
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub()
     end subroutine
module subroutine chk
end
module subroutine ss
end
  end interface
contains
module procedure  ss
allocate(p,source='1')
end
end
submodule (m1) submod
contains
  module procedure  sub
  implicit none
  character::cc
  call ss
  cc=p(:)
  write(2,'(a)') cc
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
  module procedure  sub2
  implicit none
  character::cc
  cc=p(:)
  write(2,'(a)') cc
  end
module procedure  chk
  character::c
rewind 2
read(2,'(a)') c;if (c/='1') print *,2001
read(2,'(a)') c;if (c/='1') print *,2001
end
end submodule

use m1
call sub
call sub2
call chk
print *,'sngg403o : pass'
end
