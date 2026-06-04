module n0
procedure(c),pointer:: p
interface
character function c()
end function
end interface
end
module m1
use n0
private::c,p
public
  interface
     module subroutine sub()
     end subroutine
  end interface
contains
subroutine s
p=>c
end subroutine
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc
  cc=p()
  write(31,'(a)') cc
  end subroutine
end submodule

use m1
call s
call sub



call chk
print *,'sngg931n : pass'
end
subroutine chk
character c
rewind 31
read(31,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
