module mod01
 type m01_ty01
  integer :: m01_t01_i01
 end type
end module

use mod01

interface
 function ifunc01(if01_arg01) result(irst01)
  use mod01
  integer :: if01_arg01
  character(:), allocatable :: irst01
 end function
end interface
integer :: ii_01
ii_01 = cfunc01(ifunc01)

contains
 function cfunc01(cf01_df01) result(crst01)
  procedure(ifunc01) :: cf01_df01
  integer :: i = 2
  integer :: crst01
  character(:), allocatable :: ch_al01
  allocate(ch_al01, source=cf01_df01(i))
   print*, ch_al01
   print *,cf01_df01(i)
  crst01 = 5
 end function

 subroutine csub02(cs02_dfunc01)
  interface
   function cs02_dfunc01() result(cs02_drst01)
    character(:), allocatable :: cs02_drst01
   end function
  end interface
  print *,cs02_dfunc01()
 end subroutine

end

function ifunc01(if01_arg01) result(irst01)
 use mod01
 integer :: if01_arg01
 character(:), allocatable :: irst01
 allocate(character(len = 4) :: irst01)
 irst01 = 'pass'
end function


