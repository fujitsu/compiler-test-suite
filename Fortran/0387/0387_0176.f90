module mod01
 interface
  function m01ifunc01(m01if01_arg01, m01if01_arg02, m01if01_arg03) result(m01irst01)
   procedure(integer) :: m01if01_arg01
   procedure(integer) :: m01if01_arg02
   integer            :: m01if01_arg03
   integer            :: m01irst01
  end function
 end interface
 procedure(m01ifunc01) :: pm01ifunc01
end module

module mod02
 interface
  function m02ifunc01(m02if01_arg01, m02if01_arg02) result(m02irst01)
   procedure(integer) :: m02if01_arg01
   integer            :: m02if01_arg02
   integer            :: m02irst01
  end function
 end interface
end module

use mod01
use mod02

interface
 function ifunc01(if01_arg01) result(irst01)
  integer :: if01_arg01
  integer :: irst01
 end function
end interface

if (pm01ifunc01(m02ifunc01, ifunc01, 2).ne.64) print *,'error'

print *,'pass'

end

function pm01ifunc01(pm01if01_arg01, pm01if01_arg02, pm01if01_arg03) result(pm01irst01)
 procedure(integer) :: pm01if01_arg01
 procedure(integer) :: pm01if01_arg02
 integer            :: pm01if01_arg03
 integer            :: pm01irst01
 pm01irst01 = pm01if01_arg01(pm01if01_arg02, pm01if01_arg02(pm01if01_arg03)) * pm01if01_arg02(pm01if01_arg03)
end function

function m02ifunc01(m02if01_arg01, m02if01_arg02) result(m02irst01)
 procedure(integer) :: m02if01_arg01
 integer            :: m02if01_arg02
 integer            :: m02irst01
 m02irst01 = m02if01_arg01(m02if01_arg02)
end function

function ifunc01(if01_arg01) result(irst01)
 integer :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01 * if01_arg01
end function
