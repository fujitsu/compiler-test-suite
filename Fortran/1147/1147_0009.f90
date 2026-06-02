module m1
implicit none
character,external:: c
private
public::sub
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
  write(10,'(a)') cc
  end subroutine
end submodule

use m1
call sub



call chk
print *,'sngg908n : pass'
end
subroutine chk
character c
rewind 10
read(10,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
