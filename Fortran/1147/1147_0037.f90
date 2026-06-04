module m1
implicit none
procedure(character),pointer:: c12345
private ::c12345
  interface
     module subroutine sub()
     end subroutine
  end interface
contains
subroutine set
interface
character function e12345()
end function
end interface
c12345=>e12345
end subroutine
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
  character::cc
  cc=c12345()
  write(42,'(a)') cc
  end subroutine
end submodule

use m1
call set
call sub



call chk
print *,'sngg942n : pass'
end
subroutine chk
character c
rewind 42
read(42,'(a)') c
if (c/='a') print *,801
end
character function e12345()
e12345='a'
end function
