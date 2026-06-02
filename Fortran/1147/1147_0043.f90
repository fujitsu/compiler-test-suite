module m1
integer::c12345=1
private ::c12345
  interface
     module subroutine sub()
     end subroutine
  end interface
end 
submodule (m1) submod
integer::c12345=2
  interface
     module subroutine s()
     end subroutine
  end interface
contains
  module subroutine sub()
  implicit none
   call s
  if (c12345/=2) print *,1010
  end subroutine
end submodule 
submodule (m1:submod) nsubmod
contains
  module subroutine s()
  implicit none
  if (c12345/=2) print *,1010
  end subroutine
end submodule 

use m1
integer::c12345=3
call y
call sub
print *,'sngg949n : pass'
contains
subroutine y
  if (c12345/=3) print *,10102
end
end
