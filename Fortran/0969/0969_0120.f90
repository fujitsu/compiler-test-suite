module mod01
 type m01_ty01
  sequence
  integer                                :: m01_t01_ii_01
  procedure(m01_func01), pointer, nopass :: m01_t01_pm01_func01p01
 end type
 type m01_ty02
  sequence
  integer                                :: m01_t02_ii_01
  procedure(m01_func03), pointer, nopass :: m01_t02_pm01_func01p01
 end type
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   type m01_ty01
    sequence
    integer                                :: m01_t01_ii_01
    procedure(m01_func01), pointer, nopass :: m01_t01_pm01_func01p01
   end type
   type (m01_ty01) :: m01_f01_arg01
   integer         :: m01_rst01
   m01_rst01 = m01_f01_arg01%m01_t01_ii_01
  end function
  function m01_func02(m01_f02_arg01) result(m01_rst02)
   type m01_ty01
    sequence
    integer                                :: m01_t01_ii_01
    procedure(m01_func01), pointer, nopass :: m01_t01_pm01_func01p01
   end type
   type (m01_ty01) :: m01_f02_arg01
   integer         :: m01_rst02
   m01_rst02 = m01_f02_arg01%m01_t01_ii_01
  end function
  function m01_func03(m01_f03_arg01) result(m01_rst03)
   type m01_ty02
    sequence
    integer                                :: m01_t02_ii_01
    procedure(m01_func03), pointer, nopass :: m01_t02_pm01_func01p01
   end type
   integer         :: m01_f03_arg01
   type (m01_ty02) :: m01_rst03
   m01_rst03%m01_t02_ii_01 = m01_f03_arg01
  end function
  function m01_func04(m01_f04_arg01) result(m01_rst04)
   type m01_ty02
    sequence
    integer                                :: m01_t02_ii_01
    procedure(m01_func03), pointer, nopass :: m01_t02_pm01_func01p01
   end type
   integer         :: m01_f04_arg01
   type (m01_ty02) :: m01_rst04
   m01_rst04%m01_t02_ii_01 = m01_f04_arg01
  end function
end module

use mod01

end
