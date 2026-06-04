module m1
implicit none
character,pointer:: p
private ::p
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
  if (1==1) return
  cc=p(:)
  write(23,'(a)') cc
  end subroutine
end submodule

use m1
call sub


print *,'sngg921n : pass'
end
