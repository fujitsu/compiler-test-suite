module mod1
 type ty1
  integer :: ti1 = 1
  real    :: tr1 = 2.0
 end type
 type, extends(ty1) :: ty2
 end type
 type ty4
  integer :: ti1 = 1
  integer :: tr1 = 2.0
 end type
end module

use mod1

interface
 function func1(i, r) result(rst)
  use mod1
  integer :: i
  real    :: r
  type (ty1) :: rst
 end function
end interface

procedure(type(ty1)),pointer :: ptt1p
procedure(type(ty1))         :: ptt1_function

type , extends(ty1) :: ty3
end type

type (ty2) :: t2
type (ty3) :: t3

t2 = ty2(ptt1_function())
t3 = ty3(ptt1_function())

ptt1p => func1

t2 = ty2(ptt1p(t2%ti1, t2%tr1))
t3 = ty3(ptt1p(t2%ti1, t2%tr1))

print *,'pass'

end

module mod2
use mod1
end module

module mod3
use mod2
end module

function ptt1_function() result(rst)
 use mod3
 type(ty1) :: rst
 rst = ty1(3, 6.0)
end function

function func1(i, r) result(rst)
 use mod3
 integer :: i
 real    :: r
 type (ty1) :: rst
 rst = ty1(i, r)
end function
