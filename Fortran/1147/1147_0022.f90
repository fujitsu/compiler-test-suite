module nnn
implicit none
procedure(character),pointer:: p
end
module m1
use nnn
private
public::sub,s
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
  write(27,'(a)') cc
  end subroutine
end submodule

use m1
call s
call sub



call chk
print *,'sngg926n : pass'
end
subroutine chk
character c
rewind 27
read(27,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
