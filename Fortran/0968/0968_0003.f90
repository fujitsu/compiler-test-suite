module mod01
 contains
  subroutine m01_sub01()
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   integer :: m01_s02_arg01
  end subroutine
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 0
  end function
  function m01_func02(m01_f02_arg01) result(m01_rst02)
   integer :: m01_f02_arg01
   integer :: m01_rst02
   m01_rst02 = m01_f02_arg01
  end function
  function m01_func03(m01_f03_arg01) result(m01_rst03)
   character :: m01_f03_arg01
   integer   :: m01_rst03
   m01_rst03 = ichar(m01_f03_arg01)
  end function
end module

interface
 subroutine isub01(s01_dproc01)
  procedure() :: s01_dproc01
 end subroutine
 subroutine isub02(s02_dproc01)
  procedure(integer) :: s02_dproc01
 end subroutine
 subroutine isub03(s03_dproc01)
  procedure(integer) :: s03_dproc01
 end subroutine
 subroutine isub04(s04_dproc01)
  type ty01
   sequence
   integer :: i01
  end type
  procedure(type(ty01)) :: s04_dproc01
 end subroutine
 subroutine isub05(s05_dproc01)
  use mod01
  procedure(m01_sub01) :: s05_dproc01
 end subroutine
 subroutine isub06(s06_dproc01)
  use mod01
  procedure(m01_func01) :: s06_dproc01
 end subroutine
 subroutine isub07(s07_dproc01)
  use mod01
  procedure(m01_func02) :: s07_dproc01
 end subroutine
end interface


end

subroutine isub01(s01_dproc01)
 procedure(integer) :: s01_dproc01
end subroutine

subroutine isub02(s02_dproc01)
 procedure() :: s02_dproc01
end subroutine

subroutine isub03(s03_dproc01)
 procedure(logical) :: s03_dproc01
end subroutine

subroutine isub04(s04_dproc01)
 type ty01
  sequence
  logical :: i01
 end type
 procedure(type(ty01)) :: s04_dproc01
end subroutine

subroutine isub05(s05_dproc01)
 use mod01
 procedure(m01_sub02) :: s05_dproc01
end subroutine

subroutine isub06(s06_dproc01)
 use mod01
 procedure(m01_func02) :: s06_dproc01
end subroutine

subroutine isub07(s07_dproc01)
 use mod01
 procedure(m01_func03) :: s07_dproc01
end subroutine

