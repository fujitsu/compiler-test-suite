module e0                     ! 1)
type en
integer::x=8        ! 4)
end type
private
public::en
end
module d0                     ! 1)
use e0
type dn
integer::x=8        ! 4)
end type
private
public::dn
end
module c0                     ! 1)
use d0
type cn
integer::x=8        ! 4)
end type
private
public::cn
end
module b0                     ! 1)
use c0
type bn
integer::x=8 
end type
private
public::bn
end
module m1                     ! 2) , 7)
  use c0                      ! 3) , 4)
  use b0                      ! 3) , 4)
  private
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
type(cn)::a03
end module m1

submodule (m1) submod          ! 6), 7)
       implicit none
type(cn)::a03
contains
  module subroutine sub1()
if (a03%x/=8)print *,1001
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg362n : pass'
end
