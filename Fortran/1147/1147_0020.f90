module nnn
implicit none
procedure(character),pointer:: p
end
module m1
use nnn
private ::p
  interface
     module subroutine sub()
     end subroutine
  end interface
contains
subroutine s
interface
character function c()
end function
end interface
p=>c
end subroutine
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc
  cc=p()
  write(25,'(a)') cc
  end subroutine
end submodule

use m1
call s
call sub



call chk
print *,'sngg924n : pass'
end
subroutine chk
character c
rewind 25
read(25,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
