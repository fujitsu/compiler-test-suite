module mod01
 type mty01
  integer :: mi01
 end type
end module

module mod02
 interface 
  function mf01(dty01) result(mirst01)
   use mod01
   type (mty01) :: dty01
   type (mty01) :: mirst01
  end function
 end interface
end module

module mod03
 contains
  function m3func01() result(mrst01)
   use mod02
   procedure(mf01),pointer :: mrst01
   mrst01 => mf01
  end function
  function y(di01) result(mrst01)
   use mod02
   procedure(m3func01),pointer,intent(in) :: di01   
   integer                    :: mrst01
   mrst01 = 1
  end function
end module

use mod03
print *,'pass'

end
  function mf01(dty01) result(mirst01)
   use mod01
   type (mty01) :: dty01
   type (mty01) :: mirst01
  end function
