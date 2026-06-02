module mod01
  integer::iii
  type, private :: ty01
     sequence
     integer :: i01
  end type ty01
contains
  subroutine m01sub01(m01s01_arg01)
    type(ty01) :: m01s01_arg01
    iii=-1   
  end subroutine m01sub01
end module mod01
use mod01
type :: ty01
   sequence
   integer :: i01
end type ty01
type (ty01) :: tt01
call m01sub01(tt01)
if(iii/=-1) print *,'err'
print *,'sngtbind_21:pass'
end
