module mod
implicit none
  integer ,protected ,target :: iii(3)
contains
  subroutine sub01()
  implicit none
  integer :: iip
  pointer :: iip
  allocate(iip)
  iip=>iii(3)
  iip = 1
  print *,"pass"
  end subroutine
end

use mod

 call sub01()
end
