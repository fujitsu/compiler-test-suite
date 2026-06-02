module mod1
 contains
  function m1func1(i) result(rst)
   integer (kind=4) :: i,rst
   rst=i
  end function
  function m1func2(i) result(rst)
   real    (kind=4) :: i,rst
   rst=i
  end function
end module

use mod1

interface m1func1
 module procedure m1func1,m1func2
end interface

integer :: i
procedure(m1func1),pointer :: p1
p1=>m1func1

i = p1(1)
if (i.ne.1) print *,'fail'
print *,'pass'

end
