module mod1
 type mty1
  procedure(sub),pointer,nopass :: ttpp
 end type
 interface
  subroutine sub(i)
   integer :: i
  end subroutine
 end interface
end module

module mod2
 contains
  subroutine sub_test(i)
   integer :: i
  end subroutine
end module

use mod1
use mod2

type(mty1) :: mt

mt%ttpp => sub_test

print *,'pass'

end
