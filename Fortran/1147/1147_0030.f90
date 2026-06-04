module k0
procedure(c),pointer:: p
contains
character function c()
c='a'
end function
end
module rr9
use k0
end
module t
use rr9
end
module m1
use t
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
  write(35,'(a)') cc
  end subroutine
end submodule

use m1
call s
call sub



call chk
print *,'sngg935n : pass'
end
subroutine chk
character c
rewind 35
read(35,'(a)') c
if (c/='a') print *,801
end
