module n
implicit none
integer ::k1=1
namelist /nam/ k1
end
module m1
  use n    
implicit none
 private nam
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
write(1,nam)
  end subroutine sub1
end submodule m1sub

use m1
call sub1
call chk

print *,'sngg022n : pass'
end
subroutine chk
namelist /nam/ k1
rewind 1
read(1,nam)
if (k1/=1) print *,101
end
