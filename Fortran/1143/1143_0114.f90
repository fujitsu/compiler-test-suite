module n
integer ::k1=1
namelist /znam/ k1
end
module m1
  use n    
 private::znam
 public
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
       implicit none
contains
  module subroutine sub1()
write(1,znam)
  end subroutine sub1
end submodule m1sub

use m1
call sub1
call chk

print *,'sngg265n : pass'
end
subroutine chk
namelist /znam/ k1
rewind 1
read(1,znam)
if (k1/=1) print *,101
end
