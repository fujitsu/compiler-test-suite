module k0
type x
procedure(c),pointer,nopass:: p
end type
type(x)::v
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
public::s,sub
  interface
     module subroutine s
     end subroutine
     module subroutine sub()
     end subroutine
  end interface
contains
module procedure s
v%p=>c
end
end
submodule (m1) submod
contains
  module procedure  sub
  implicit none
  character::cc
  cc=v%p()
  write(13,'(a)') cc
  end
end submodule

use m1
call s
call sub



call chk
print *,'sngg440o : pass'
end
subroutine chk
character c
rewind 13
read(13,'(a)') c
if (c/='a') print *,801
end
