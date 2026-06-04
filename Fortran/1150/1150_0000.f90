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
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc
  call ss
  cc=p(:)
  write(1,'(a)') cc
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
  write(1,'(a)') cc
  end subroutine
end submodule 

use m1
call sub
call sub2
call chk
print *,'sngg160o : pass'
end
subroutine chk
  character::c
rewind 1
read(1,'(a)') c;if (c/='1') print *,2001
read(1,'(a)') c;if (c/='1') print *,2001
end
