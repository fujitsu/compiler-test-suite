module mod1
 interface
  function func() result(rst)
   integer :: rst
  end function
 end interface
 contains
  function xfunc() result(rst)
   integer :: rst
   rst=1
  end function
end module

use mod1

procedure(xfunc),pointer :: mpp
procedure(func),pointer  :: pp

integer :: i

mpp=>func
pp=>xfunc

i = mpp()

if (i.ne.1) print *,'fail'

i = pp()

if (i.ne.1) print *,'fail'

print *,'pass'

end

function func() result(rst)
 integer :: rst
 rst= 1
end function
