module mod1
 contains
  function func1(p1,p2) result(rst)
   integer,external,pointer::p1
   character,external,pointer::p2
   integer :: rst
   p1=>func2
   rst=1
  end function
  function func2() result(rst)
   integer :: rst
   procedure(integer  ),pointer :: p1
   procedure(character),pointer :: p2
   rst=func1(p1,p2)
  end function
end module

use mod1

integer :: i
i = func2()
if (i.ne.1) print *,'fail'

print *,'pass'

end
