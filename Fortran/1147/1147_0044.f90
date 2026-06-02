module m1
implicit none
private ::c
procedure(character):: c
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
  cc=c()
  write(48,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg952n : pass'
end
subroutine chk
character c
rewind 48
read(48,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
