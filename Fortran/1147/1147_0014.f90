module m1
implicit none
procedure(character),pointer:: p
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
  write(19,'(a)') cc
  end subroutine
end submodule

use m1
call s
call sub



call chk
print *,'sngg917n : pass'
end
subroutine chk
character c
rewind 19
read(19,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
