module mod01
 contains
  function mdfnc01() result(mrst01)
   integer :: mrst01
   mrst01 = 1
  end function
  function mdfnc02() result(mrst02)
   interface mdfnc
    procedure mdfnc01
   end interface
   integer :: mrst02
   type mdfnc
    integer :: i01
   end type
   mrst02 = mdfnc01() + mdfnc()
  end function
end module

use mod01

interface mdfnc
 procedure mdfnc01
end interface
integer :: i
type mdfnc
 integer :: i01
end type

i = mdfnc01() + mdfnc()

end
