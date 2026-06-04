module m1
private
public::sub,s
procedure(c),pointer:: p
  interface
     module subroutine sub()
     end subroutine
  end interface
interface
character function c()
end function
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
  write(29,'(a)') cc
  end subroutine
end submodule

use m1
call s
call sub



call chk
print *,'sngg929n : pass'
end
subroutine chk
character c
rewind 29
read(29,'(a)') c
if (c/='a') print *,801
end
character function c()
c='a'
end function
