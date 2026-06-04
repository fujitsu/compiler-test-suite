module n
implicit none
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
end module m1
submodule (m1) m1sub
       implicit none
  interface
     module subroutine sub2()
     end subroutine
  end interface
contains
  module subroutine sub1()
implicit none
if (k2/=2) print *,102
call sub2
  end 
end 
submodule (m1:m1sub) m2sub
       implicit none
contains
  module subroutine sub2()
implicit none
if (k2/=2) print *,102
  end 
end 

use m1
call sub1
print *,'sngg079o : pass'
end
