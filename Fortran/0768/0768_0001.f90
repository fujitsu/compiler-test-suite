module mod01
 type ty01
  character(4) :: c4
 end type
 contains
  function m01func01(m01_f01_arg01) result(m01rst01)
   character(4) :: m01_f01_arg01
   type (ty01)  :: m01rst01
   m01rst01 = ty01(m01_f01_arg01)
  end function
end module

module mod02
 type ty02
  integer :: i01
 end type
 interface ty02
  module procedure m02func01
 end interface
 contains
  function m02func01(m02_f01_arg01) result(m02rst01)
   character   :: m02_f01_arg01
   type (ty02) :: m02rst01
   m02rst01 = ty02(ichar(m02_f01_arg01))
  end function
end module

call sub01()

end

subroutine sub01()

use mod01

interface ty01
 module procedure m01func01
end interface

type (ty01) :: t01

t01 = ty01('pass')



end subroutine

subroutine sub02(ifunc02)
use mod02
interface ty02
 function ifunc01(if01_arg01) result(irst01)
  use mod02
  logical :: if01_arg01
  type(ty02) :: irst01
 end function
 function ifunc02() result(irst02)
  use mod02
  type(ty02) :: irst02
 end function
end interface
type (ty02) :: t02

t02 = ty02()
t02 = ty02(1)
t02 = ty02(.true.)
t02 = ty02('a')

end subroutine

function ifunc01(if01_arg01) result(irst01)
 use mod02
 logical :: if01_arg01
 type(ty02) :: irst01
 irst01 = ty02(1)
 if (if01_arg01) irst01 = ty02(7)
end function
