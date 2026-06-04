module n
implicit none
integer,parameter::k1=1
integer          ::k2=2
end
module m1
  use n    
implicit none
  private
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
  interface
     module subroutine sub2()
     end subroutine
  end interface
integer,parameter::k3=3
integer          ::k4=4
end module m1
submodule (m1) m1sub
contains
  module procedure  sub1
implicit none
if (k1/=1) print *,101
if (k2/=2) print *,102
if (k3/=3) print *,103
if (k4/=4) print *,104
call sub2
  end 
end submodule m1sub
submodule (m1:m1sub) m2sub
contains
  module procedure  sub2
implicit none
if (k1/=1) print *,101
if (k2/=2) print *,102
if (k3/=3) print *,103
if (k4/=4) print *,104
  end 
end 
use m1
call sub1

print *,'sngg413o : pass'
end
