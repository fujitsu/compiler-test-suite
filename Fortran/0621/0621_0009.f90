module mod01
  type, private :: ty01
   sequence
   integer, private :: ii_01
  end type
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   type ty02
    sequence
    type (ty01)  :: tt_t02
   end type
   type (ty02) :: m01_f01_arg01
   type (ty02) :: m01_rst01
   m01_rst01 = m01_f01_arg01
  end function

  function m01_func02(m01_f02_arg01) result(m01_rst02)
   type :: ty01
    sequence
    integer :: ii_01
   end type
   type ty02
    sequence
    type (ty01)  :: tt_t02
   end type
   type (ty02) :: m01_f02_arg01
   type (ty02) :: m01_rst02
   m01_rst02 = m01_f02_arg01
  end function

  function m01_func03(m01_f03_arg01) result(m01_rst03)
   type :: ty01
    sequence
    integer :: ii_02
   end type
   type ty02
    sequence
    type (ty01)  :: tt_t02
   end type
   type (ty02) :: m01_f03_arg01
   type (ty02) :: m01_rst03
   m01_rst03 = m01_f03_arg01
  end function

end module

use mod01

interface ty02
 module procedure m01_func01, m01_func02, m01_func03
end interface

type :: ty01
 sequence
 integer :: ii_02
end type
type ty02
 sequence
 type (ty01)  :: tt_t02
end type

type (ty02) :: t02

t02 = ty02(ty01(1))

if (t02%tt_t02%ii_02.ne.1) print *,'a'

t02 = ty02(ty02(ty01(1)))

if (t02%tt_t02%ii_02.ne.1) print *,'b'

print *,'pass'

end
