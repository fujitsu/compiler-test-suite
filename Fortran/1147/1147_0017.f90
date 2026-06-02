module m1
implicit none
procedure(character),pointer:: p
!!!private ::p
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
  cc=p()
  write(22,'(a)') cc
  end subroutine
end submodule

use m1
call sub


print *,'sngg920n : pass'
end
