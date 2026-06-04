module k                     ! 1)
integer(8)::n=8        ! 4)
namelist/nm/n
end
module m1                     ! 2) , 7)
  use k                      ! 3) , 4)
  private                     ! 5)
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
module z
integer(4)::n=4        ! 4)
namelist/nm/n
end

submodule (m1) submod          ! 6), 7)
use z
implicit none
  real(kind=kind(n)) :: a            ! 8)
contains
  module subroutine sub1()
    real(kind=kind(n)) :: b         ! 8)
    if (n/=4)print *,2002
    if (kind(a)/=4)print *,2012
    if (kind(b)/=4)print *,2013
write(1,nm)
  end subroutine sub1
end 

use m1
call sub1
call chk
print *,'sngg271n : pass'
end
subroutine chk
namelist /nm/ n
rewind 1
read(1,nm)
if (n/=4) print *,101
end
