module mod01
 type, private :: ty01
  sequence
  integer :: i01
 end type
 contains
  subroutine m01sub01(m01s01_arg01)
   type(ty01) :: m01s01_arg01
  end subroutine
end module

use mod01

type :: ty01
  sequence
 integer :: i01
end type

type (ty01) :: tt01

call m01sub01(tt01)

end
