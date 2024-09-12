module mod01
 type ty01
  integer :: i01
  real    :: r01
  complex :: c01
 end type
end module

use mod01

interface ty01
 function ifunc01(if01_arg01, if01_arg02, if01_arg03) result(irst01)
  use mod01
  integer :: if01_arg01
  real    :: if01_arg02
  complex :: if01_arg03
  type (ty01) :: irst01
 end function
 function ifunc02(if02_arg01, if02_arg02, if02_arg03) result(irst02)
  use mod01
  complex :: if02_arg01
  real    :: if02_arg02
  integer :: if02_arg03
  type (ty01) :: irst02
 end function
end interface

type(ty01) :: t01

t01 = ty01( 1,          2,          3        )
t01 = ty01( 1.0,        2.0,        3.0      )
t01 = ty01((1.0, 2.0), (3.0, 4.0), (5.0, 6.0))

print *,'pass'

end

function ifunc01(if01_arg01, if01_arg02, if01_arg03) result(irst01)
 use mod01
 integer :: if01_arg01
 real    :: if01_arg02
 complex :: if01_arg03
 type (ty01) :: irst01
 irst01 = ty01(if01_arg01, if01_arg02, if01_arg03)
end function

function ifunc02(if02_arg01, if02_arg02, if02_arg03) result(irst02)
 use mod01
 complex :: if02_arg01
 real    :: if02_arg02
 integer :: if02_arg03
 type (ty01) :: irst02
 irst02 = ty01(if02_arg03, if02_arg02, if02_arg01)
end function
