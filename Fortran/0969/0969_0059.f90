module mod01
 type ty01
  integer :: ii01
 end type
 contains
  subroutine m01_sub01(m01_s01_arg01)
   type (ty01) :: m01_s01_arg01
  end subroutine
end module

use mod01

type (ty01) :: tt01_01

call m01_sub01(tt01_01)

end
