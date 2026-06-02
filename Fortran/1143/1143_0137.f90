module k                     ! 1)
integer(8)::n=8        ! 4)
integer(8)::t=8        ! 4)
namelist/nm/n
end
module m1                     ! 2) , 7)
  use k,only:nm                      ! 3) , 4)
  private
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) submod          ! 6), 7)
       implicit none
  real(kind=8      ) :: a            ! 8)
contains
  module subroutine sub1()
    real(kind=8      ) :: b         ! 8)
if (kind(a)/=8)print *,901
if (kind(b)/=8)print *,902
write(1,nm)
  end subroutine sub1
end 

use k
use m1
call sub1
call chk
print *,'sngg304n : pass'
end
subroutine chk
namelist /nm/ n
rewind 1
read(1,nm)
if (n/=8) print *,101
end
