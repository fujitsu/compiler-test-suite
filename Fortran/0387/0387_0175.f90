module mod01
 procedure(m01func01) :: pm01func01
 contains
  function m01func01(m01f01_arg01, m01f01_arg02, m01f01_arg03) result(m01rst01)
   procedure(logical) :: m01f01_arg01
   procedure(logical) :: m01f01_arg02
   logical            :: m01f01_arg03
   logical            :: m01rst01
   m01rst01 = .not.(m01f01_arg01(m01f01_arg02, m01f01_arg02(m01f01_arg03)) .and. m01f01_arg02(m01f01_arg03))
  end function
end module

module mod02
 contains
  function m02func01(m02f01_arg01, m02f01_arg02) result(m02rst01)
   procedure(logical) :: m02f01_arg01
   logical            :: m02f01_arg02
   logical            :: m02rst01
   m02rst01 = m02f01_arg01(m02f01_arg02)
  end function
end module

use mod01
use mod02

interface
 function ifunc01(if01_arg01) result(irst01)
  logical :: if01_arg01
  logical :: irst01
 end function
end interface

if (pm01func01(m02func01, ifunc01, .true.).neqv..true.) print *,'false'

print *,'pass'

end

function pm01func01(pm01f01_arg01, pm01f01_arg02, pm01f01_arg03) result(pm01rst01)
 procedure(logical) :: pm01f01_arg01
 procedure(logical) :: pm01f01_arg02
 logical            :: pm01f01_arg03
 logical            :: pm01rst01
 pm01rst01 = .not.(pm01f01_arg01(pm01f01_arg02, pm01f01_arg02(pm01f01_arg03)) .and. pm01f01_arg02(pm01f01_arg03))
end function

function ifunc01(if01_arg01) result(irst01)
 logical :: if01_arg01
 logical :: irst01
 irst01 = .not.(if01_arg01 .and. if01_arg01)
end function
