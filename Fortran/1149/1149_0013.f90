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
  interface
     module subroutine sub2()
     end subroutine
  end interface
contains
  module subroutine sub1()
implicit none
write(1,nam)
call sub2
  end 
end 
submodule (m1:m1sub) m2sub
contains
  module subroutine sub2()
implicit none
write(1,nam)
  end 
end 

use m1
call sub1
call chk

print *,'sngg071o : pass'
end
subroutine chk
namelist /nam/ k1
rewind 1
read(1,nam)
if (k1/=1) print *,101
read(1,nam)
if (k1/=1) print *,101
end
