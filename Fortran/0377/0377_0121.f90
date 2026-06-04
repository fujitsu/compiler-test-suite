module mod1
 type ty1
  integer :: ti
 end type
 type , extends(ty1) :: ty2
  integer :: ii = 1
 end type
 type , extends(ty2) :: ty3
 end type
end module

module mod2
 interface
  function func(tt) result(rst)
   use mod1
   type(ty3) :: tt (3)
   integer :: rst
  end function
  function func2() result(rst)
   use mod1
   type(ty3) :: rst (1)
  end function
 end interface
end module

use mod1
use mod2

type (ty3),allocatable :: t3(:)

allocate(t3(3))

t3 = [func2(), ty3(ty2(ti = 1)), func2()]

i = func(t3)

i = func([( ty3(ty2(ti = 1) ) , i = 1, 3 )])

if (i.ne.1) print *,'fail'

print *,'pass'

end

function func(tt) result(rst)
 use mod1
 type(ty3) :: tt (3)
 integer :: rst
 rst = tt(1)%ti
end function

function func2() result(rst)
 use mod1
 type(ty3) :: rst (1)
 rst = [ (ty3(ty2(ti = 1)), i = 1, 1) ]
end function
