module pntr12_module

implicit none

integer, parameter :: i_knd = kind(1)

type :: pntr12_type
  sequence
  integer(i_knd) :: i1, i2
end type pntr12_type

type(pntr12_type) :: pntr12

integer(i_knd), dimension(2) :: jorig

equivalence (pntr12,jorig)

end module pntr12_module
use pntr12_module
print *,'pass'
end
