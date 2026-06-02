module n
integer ::k1=1
namelist /znam/ k1
end
module m1
  use n    
 private::znam,k1
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
k1=2
  end subroutine sub1
end submodule m1sub

use m1
use n
call sub1
write(1,znam)
call chk

print *,'sngg266n : pass'
end
subroutine chk
namelist /znam/ k1
rewind 1
read(1,znam)
if (k1/=1) print *,101
read(1,znam)
if (k1/=2) print *,102
end
