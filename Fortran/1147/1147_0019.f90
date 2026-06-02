module m1
implicit none
private ::p
procedure(character),pointer:: p
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
  write(24,'(a)') cc
  end subroutine
end submodule

use m1
call sub


print *,'sngg923n : pass'
end
