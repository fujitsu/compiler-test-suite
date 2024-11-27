module mod01
 interface
  function m01ifunc01(m01if01_arg01, m01if01_arg02, m01if01_arg03) result(m01irst01)
   procedure(character) :: m01if01_arg01
   procedure(character) :: m01if01_arg02
   character            :: m01if01_arg03
   character            :: m01irst01
  end function
 end interface
 procedure(m01ifunc01) :: pm01ifunc01
end module

module mod02
 interface
  function m02ifunc01(m02if01_arg01, m02if01_arg02) result(m02irst01)
   procedure(character) :: m02if01_arg01
   character            :: m02if01_arg02
   character            :: m02irst01
  end function
 end interface
end module

use mod01
use mod02

interface
 function ifunc01(if01_arg01) result(irst01)
  character :: if01_arg01
  character :: irst01
 end function
end interface

if (pm01ifunc01(m02ifunc01, ifunc01, 'abcdefghijklmnopqrstuvwxyzABC').eq.'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr') print *,'error'

print *,'pass'

end

function pm01ifunc01(pm01if01_arg01, pm01if01_arg02, pm01if01_arg03) result(pm01irst01)
 procedure(character(4)) :: pm01if01_arg01
 procedure(character(4)) :: pm01if01_arg02
 character(4)            :: pm01if01_arg03
 character(4)            :: pm01irst01
 pm01irst01 = pm01if01_arg01(pm01if01_arg02, pm01if01_arg02(pm01if01_arg03)) // pm01if01_arg02(pm01if01_arg03)
end function

function m02ifunc01(m02if01_arg01, m02if01_arg02) result(m02irst01)
 procedure(character(4)) :: m02if01_arg01
 character(4)            :: m02if01_arg02
 character(4)            :: m02irst01
 m02irst01 = m02if01_arg01(m02if01_arg02)
end function

function ifunc01(if01_arg01) result(irst01)
 character(4) :: if01_arg01
 character(4) :: irst01
 irst01 = if01_arg01 // if01_arg01
end function
