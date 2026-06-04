module k                     ! 1)
integer(8)::n=8        ! 4)
integer::t=8        ! 4)
namelist/nm/n
end
module m1                     ! 2) , 7)
  use k,only:n,nm                   ! 3) , 4)
  private::n    ,nm              ! 5)
  public
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) submod          ! 6), 7)
implicit none
  real(kind=kind(n)) :: a            ! 8)
contains
  module subroutine sub1()
    real(kind=kind(n)) :: b         ! 8)
    if (kind(a)/=8) print *,1001
    if (kind(b)/=8) print *,1002
write(1,nm)
  end subroutine sub1
end 

use m1
call sub1
call chk
print *,'sngg288n : pass'
end
subroutine chk
namelist /nm/ n
rewind 1
read(1,nm)
if (n/=8) print *,101
end
