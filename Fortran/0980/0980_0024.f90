module mod
implicit none
  type :: ty01
    integer :: iii
  end type
  type(ty01),protected,target :: stc
end

use mod

  implicit none
  integer :: iip
  pointer :: iip
  allocate(iip)
  iip=>stc%iii
  iip = 1
end
