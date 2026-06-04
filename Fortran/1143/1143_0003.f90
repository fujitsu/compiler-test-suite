module n
implicit none
integer,parameter::k1=1
integer          ::k2=2
end
module m1
  use n    
implicit none
 private k1
  interface
     module subroutine sub1()
     end subroutine
  end interface
integer,parameter::k3=3
integer          ::k4=4
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
if (k1/=1)print *,1001
if (k2/=2)print *,1011
if (k3/=3)print *,1021
if (k4/=4)print *,1031
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg015n : pass'
end
