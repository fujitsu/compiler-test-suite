module mod1
contains
subroutine sub(dmy)
    integer :: dmy
    dmy = 1
end
end module

use mod1
integer :: yy = 0
call sub(yy)
if(yy /= 1) print *,101
call sub1()
print *,"Pass"
contains
  function fun1()
  fun1 = 1
  end 
  subroutine sub1()
  if(fun2() /= 1) print *,201
  end

  function fun2()
  fun2 = fun1()
  end 
end
