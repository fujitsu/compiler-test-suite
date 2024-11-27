module mod
implicit none
  type :: ty01
    integer :: iii
  end type
  type(ty01),protected,target :: stc
contains
  subroutine sub01()
  implicit none
  integer :: iip
  pointer :: iip
  allocate(iip)
  iip=>stc%iii
  iip = 1
  print *,"pass"
  end subroutine
end

use mod

 call sub01()
end
