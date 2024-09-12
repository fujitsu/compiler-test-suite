module mod1
 type ty1
  integer :: ti = 2
 end type
 contains
  function m1func1() result(rst)
   type (ty1) :: rst
   entry ent03() result(rst)
   rst = ty1(1)
  end function
end module

use mod1
procedure(m1func1), pointer :: m1f1p
print *,'pass'

end
