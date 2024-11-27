module mod
implicit none
  integer ,protected ,target :: iii
end

use mod

  implicit none
  integer :: iip
  pointer :: iip
  allocate(iip)
  iip=>iii
  iip = 1
  print *,"pass"
end
