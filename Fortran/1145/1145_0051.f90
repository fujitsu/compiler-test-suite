module c0                     ! 1)
integer(8)::cn=8        ! 4)
private
public::cn
end
module b0                     ! 1)
use c0
integer(8)::bn=8 
private
public::bn
end
module m1                     ! 2) , 7)
  use b0                      ! 3) , 4)
  use c0                      ! 3) , 4)
implicit none
  private
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
integer(kind(cn))::a03
end module m1

submodule (m1) submod          ! 6), 7)
       implicit none
integer(kind(cn))::a03
contains
  module subroutine sub1()
if (kind(a03)/=8)print *,1001
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg365n : pass'
end
