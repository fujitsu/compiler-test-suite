module mod
 type ty1
  integer :: i1
 end type
 type ty11
  integer :: i1
 end type
end module

use mod
interface
 function func(x) result(y)
  use mod
  integer y
  type(ty1)::x
 end function
 function func2(x) result(y)
  real x,y
 end function
end interface
procedure(func), pointer :: pf
integer :: i1
integer,pointer :: pi
integer,target :: ti
real r1
pf => func
i1=pf(ty1(1))
i1=int(1)
i1=pf(ty1(i1))

print *,'pass'

end

function func(x) result(y)
 use mod
 integer y
 type(ty1)::x
 y=1
end function

function func2(x) result(y)
 real x,y
 y=x
end function
