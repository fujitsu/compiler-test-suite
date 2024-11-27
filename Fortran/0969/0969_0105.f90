module mod01
 type mty01
  integer :: i01
 end type
 type mty02
  private
  integer :: i02
 end type
 type mty03
  sequence
  integer :: i03
 end type
 type mty04
  sequence
  private
  integer :: i04
 end type
 type, bind(c) :: mty05
  integer :: i05
 end type
 type, bind(c) :: mty06
  private
  integer :: i06
 end type
end module

module mod02
 type mty01
  integer :: i01
 end type
 type mty02
  private
  integer :: i02
 end type
 type mty03
  sequence
  integer :: i03
 end type
 type mty04
  sequence
  private
  integer :: i04
 end type
 type, bind(c) :: mty05
  integer :: i05
 end type
 type, bind(c) :: mty06
  private
  integer :: i06
 end type
end module

use mod01

type ty01
 integer :: i01
end type

type ty02
 sequence
 integer :: i02
end type

type, bind(c) :: ty03
 integer :: i03
end type

type ty04
 sequence
 integer, pointer :: i04
end type

type ty05
 sequence
 integer, allocatable :: i05
end type

type (ty01) :: st01
type (ty02) :: st02
type (ty03) :: st03
type (ty04) :: st04
type (ty05) :: st05

type (mty01) :: mst01
type (mty02) :: mst02
type (mty03) :: mst03
type (mty04) :: mst04
type (mty05) :: mst05
type (mty06) :: mst06

call sub01(st01)   
call sub02(st02)
call sub03(st03)
call sub04(st04)
call sub05(st05)

call sub02(st04)   
call sub02(st05)   

call sub04(st02)   
call sub05(st02)   

call sub06(mst01)  
call sub07(mst02)  
call sub08(mst03)
call sub09(mst04)  
call sub10(mst05)
call sub11(mst06)  

end

subroutine sub01(s01_arg01)
 type ty01
  integer :: i01
 end type
 type(ty01) :: s01_arg01
end subroutine

subroutine sub02(s02_arg01)
 type ty02
  sequence
  integer :: i02
 end type
 type(ty02) :: s02_arg01
end subroutine

subroutine sub03(s03_arg01)
 type, bind(c) :: ty03
  integer :: i03
 end type
 type(ty03) :: s03_arg01
end subroutine

subroutine sub04(s04_arg01)
 type ty04
  sequence
  integer, pointer :: i04
 end type
 type(ty04) :: s04_arg01
end subroutine

subroutine sub05(s05_arg01)
 type ty05
  sequence
  integer, allocatable :: i05
 end type
 type(ty05) :: s05_arg01
end subroutine

subroutine sub06(s06_arg01)
 use mod02
 type (mty01) :: s06_arg01
end subroutine

subroutine sub07(s07_arg01)
 use mod02
 type (mty02) :: s07_arg01
end subroutine

subroutine sub08(s08_arg01)
 use mod02
 type (mty03) :: s08_arg01
end subroutine

subroutine sub09(s09_arg01)
 use mod02
 type (mty04) :: s09_arg01
end subroutine

subroutine sub10(s10_arg01)
 use mod02
 type (mty05) :: s10_arg01
end subroutine

subroutine sub11(s11_arg01)
 use mod02
 type (mty06) :: s11_arg01
end subroutine
