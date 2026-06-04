module m1
implicit none
character(:),pointer:: c12345
private ::c12345
  interface
     module subroutine sub()
     end subroutine
  end interface
contains
subroutine set
allocate(c12345,source='x')
end subroutine
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  write(43,'(a)') c12345
  end subroutine
end submodule

use m1
call set
call sub



call chk
print *,'sngg943n : pass'
end
subroutine chk
character c
rewind 43
read(43,'(a)') c
if (c/='x') print *,801
end
