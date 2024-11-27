
module mod01
 type ty01
  sequence
  integer                                :: i01
  procedure(m01_func01), pointer, nopass :: pr_pn01
 end type
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 1
  end function

  subroutine m01_sub01(m01_s01_arg01)
   type (ty01) :: m01_s01_arg01
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   type ty01
    sequence
    integer                                :: i01
    procedure(m01_func01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s02_arg01
  end subroutine

  function m01_func02() result(m01_rst02)
   type (ty01) :: m01_rst02
   m01_rst02 = ty01(1, m01_func01)
  end function
  function m01_func03() result(m01_rst03)
   type ty01
    sequence
    integer                                :: i01
    procedure(m01_func01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_rst03
   m01_rst03 = ty01(1, m01_func01)
  end function

end module

use mod01, ty00 => ty01

type ty01
 sequence
 integer                                :: i01
 procedure(m01_func01), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01

t01 = ty01(1, m01_func01)

call m01_sub01(t01)
call m01_sub02(t01)

t01 = m01_func02()
t01 = m01_func03()

call csub01(t01)
call csub02(t01)

t01 = cfunc02()
t01 = cfunc03()


contains
  subroutine csub01(cs01_arg01)
   type (ty01) :: cs01_arg01
  end subroutine
  subroutine csub02(cs02_arg01)
   type ty01
    sequence
    integer                                :: i01
    procedure(m01_func01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: cs02_arg01
  end subroutine
  function cfunc02() result(crst02)
   type (ty01) :: crst02
   crst02 = ty01(1, m01_func01)
  end function
  function cfunc03() result(crst03)
   type ty01
    sequence
    integer                                :: i01
    procedure(m01_func01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: crst03
   crst03 = ty01(1, m01_func01)
  end function
end
