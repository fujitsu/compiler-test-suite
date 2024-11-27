module mod01
 type, private :: ty01
  sequence
  integer              :: i01
  type (ty01), pointer :: p01
 end type
 type, private :: ty02
  sequence
  type (ty01) :: t01
 end type
 contains
  function m01_func01() result(m01_rst01)
  end function
  function m01_func02(m01_f02_arg01) result(m01_rst02)
   type ty03
    sequence
    type (ty02) :: t02
   end type
   type (ty03) :: m01_f02_arg01
   type (ty03) :: m01_rst02
   m01_rst02 = m01_f02_arg01
  end function
  
end module

use mod01

interface ty04
 module procedure m01_func01, m01_func02
end interface

type ty01
 sequence
 integer              :: i01
 type (ty01), pointer :: p01
end type

type ty02
 sequence
 type (ty01) :: t01
end type

type ty03
 sequence
 type (ty02) :: t02
end type

type ty04
 sequence
 type (ty03) :: t03
end type

type(ty03) :: t03

t03 = ty04(t03)

end

