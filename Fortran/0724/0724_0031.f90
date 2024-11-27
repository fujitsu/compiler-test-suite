module mod01
 procedure(m01func01) :: pm01func01
 contains
  function m01func01(m01f01_arg01, m01f01_arg02, m01f01_arg03) result(m01rst01)
   procedure(character(3)) :: m01f01_arg01
   procedure(character(3)) :: m01f01_arg02
   character(3)            :: m01f01_arg03
   character(3)            :: m01rst01
   m01rst01 = m01f01_arg01(m01f01_arg02, m01f01_arg02(m01f01_arg03)) // m01f01_arg02(m01f01_arg03)
  end function
end module

module mod02
 contains
  function m02func01(m02f01_arg01, m02f01_arg02) result(m02rst01)
   procedure(character(3)) :: m02f01_arg01
   character(3)            :: m02f01_arg02
   character(3)            :: m02rst01
   m02rst01 = m02f01_arg01(m02f01_arg02)
  end function
end module

use mod01
use mod02

interface
 function ifunc01(if01_arg01) result(irst01)
  character(3) :: if01_arg01
  character(3) :: irst01
 end function
end interface

if (pm01func01(m02func01, ifunc01, 'pass').eq.'pass') print *,'error'

print *,'pass'

end

function pm01func01(pm01f01_arg01, pm01f01_arg02, pm01f01_arg03) result(pm01rst01)
 procedure(character(4)) :: pm01f01_arg01
 procedure(character(4)) :: pm01f01_arg02
 character(4)            :: pm01f01_arg03
 character(4)            :: pm01rst01
 pm01rst01 = pm01f01_arg01(pm01f01_arg02, pm01f01_arg02(pm01f01_arg03)) // pm01f01_arg02(pm01f01_arg03)
end function

function ifunc01(if01_arg01) result(irst01)
 character(4) :: if01_arg01
 character(4) :: irst01
 irst01 = if01_arg01 // if01_arg01
end function
