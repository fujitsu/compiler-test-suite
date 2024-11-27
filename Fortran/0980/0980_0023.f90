module mod
implicit none
  integer ,protected ,target :: iii(3)
end

use mod

  implicit none
  integer :: iip
  pointer :: iip
  allocate(iip)
  iip=>iii(3)
  iip = 1
  print *,"pass"
end
