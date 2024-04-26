module mod01
 type m01ty01
  integer(kind = 4) :: m01t01_ii04_01 = 4
 end type
end module

module mod02
 interface
  function m02ifunc01() result(m02irst01)
   use mod01
   type (m01ty01) :: m02irst01
  end function
 end interface
 contains

  function m02func01(m02f01_arg01) result(m02rst01)
   use mod01
   procedure(type(m01ty01))     :: m02f01_arg01
   procedure(m02ifunc01), pointer :: m02rst01
   m02rst01 => m02f01_arg01
  end function

  function m02func02() result(m02rst02)
   use mod01
   procedure(m02func01), pointer :: m02rst02
   m02rst02 => m02func01
  end function

  function m02func03() result(m02rst03)
   use mod01
   procedure(m02func02), pointer :: m02rst03
   m02rst03 => m02func02
  end function

end module

use mod01
use mod02

procedure(m02ifunc01)          :: pm02ifunc01
procedure(m02ifunc01), pointer :: pm02ifunc01p

procedure(m02func01),  pointer :: pm02func01p
procedure(m02func02),  pointer :: pm02func02p
procedure(m02func03),  pointer :: pm02func03p

type (m01ty01) :: m01ty01_tt01

pm02func03p  => m02func03
pm02func02p  => pm02func03p()
pm02func01p  => pm02func02p()
pm02ifunc01p => pm02func01p(pm02ifunc01)

if (same_type_as(pm02ifunc01p(), m02ifunc01())) print *,'pass'

m01ty01_tt01 = pm02ifunc01p()

if (m01ty01_tt01%m01t01_ii04_01.ne.8) print *,'error'

end

function m02ifunc01() result(m02irst01)
 use mod01
 type (m01ty01) :: m02irst01
 m02irst01 = m01ty01()
end function

function pm02ifunc01() result(pm02irst01)
 use mod01
 type (m01ty01) :: pm02irst01
 pm02irst01 = m01ty01(8)
end function

