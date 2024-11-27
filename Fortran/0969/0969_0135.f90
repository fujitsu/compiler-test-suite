module mod1 
 contains
  function c_fun1() result(ccc)
   character :: ccc
   entry c_fun2() result(ccc) bind(c)
  end function
  subroutine mod_test01()
   character :: c
   c = c_fun2()
  end subroutine
end

module mod2 
 contains
  subroutine c_sub1() 
   entry c_sub2() bind(c)
  end subroutine
  subroutine c_sub3()
   call c_sub2()
  end subroutine
end module

use mod1
use mod2

call mod_test01 
call c_sub3()

end
