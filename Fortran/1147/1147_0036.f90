module m1
implicit none
procedure(character):: c12345
private ::c12345
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
  cc=c12345()
  write(41,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg941n : pass'
end
subroutine chk
character c
rewind 41
read(41,'(a)') c
if (c/='a') print *,801
end
character function c12345()
c12345='a'
end function
