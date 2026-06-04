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
     module subroutine chk
     end subroutine
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
  interface
     module subroutine sub2()
     end subroutine
  end interface
contains
  module subroutine sub1()
implicit none
write(7,nam)
call sub2
  end
end
submodule (m1:m1sub) m2sub
contains
  module procedure  sub2
implicit none
write(7,nam)
  end
module procedure  chk
namelist /nam/ k1
rewind 7
read(7,nam)
if (k1/=1) print *,101
read(7,nam)
if (k1/=1) print *,101
end
end

use m1
call sub1
call chk

print *,'sngg414o : pass'
end
