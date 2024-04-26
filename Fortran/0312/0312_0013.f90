module mod
type drv1
  integer::ii = 1 
  real::jj    = 2.0
end type

contains
  function fun()
   type(drv1)::fun
  end function
end

use mod
type(drv1) res
res = fun()
if (res%ii .ne. 1) stop 'NG1'
if (res%jj .ne. 2.0 ) stop 'NG2'
print *,'PASS'
end

