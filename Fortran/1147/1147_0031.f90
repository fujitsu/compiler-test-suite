module m1
private
public::sub,s
procedure(c),pointer:: p
  interface
     module subroutine sub()
     end subroutine
  end interface
contains
function c() result(r)
character(:),allocatable::r
allocate(character::r)
r='a'
end function
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
  write(36,'(a)') cc
  end subroutine
end submodule

use m1
call s
call sub



call chk
print *,'sngg936n : pass'
end
subroutine chk
character c
rewind 36
read(36,'(a)') c
if (c/='a') print *,801
end
