module k0
procedure(c),pointer:: p
contains
function c() result(r)
character(:),allocatable::r
allocate(character::r)
r='a'
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
private
public::sub,sub2,s
  interface
     module subroutine sub()
     end subroutine
     module subroutine sub2()
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
  write(27,'(a)') cc
  end subroutine
end submodule
submodule (m1:submod) submod2
end
submodule (m1:submod2) submod3
end
submodule (m1:submod3) submod4
contains
  module subroutine sub2()
  implicit none
  character::cc
  cc=p()
  write(27,'(a)') cc
  end subroutine
end submodule

use m1
call s
call sub
call sub2



call chk
print *,'sngg155o : pass'
end
subroutine chk
character c
rewind 27
read(27,'(a)') c
if (c/='a') print *,801
read(27,'(a)') c
if (c/='a') print *,801
end
