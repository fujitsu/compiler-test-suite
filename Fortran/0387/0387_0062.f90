module mod1
 procedure(integer), pointer :: pip
end module

module mod2
 contains
  function m2func1(i, j) result(rst_m21)
   integer :: i
   integer :: j
   integer :: rst_m21
   rst_m21 = i * j
  end function
end module

use mod1
use mod2

pip => m2func1

if (pip(2,9).ne.pip(3,6)) print *,'error'

nullify(pip)

print *,'pass'

end
