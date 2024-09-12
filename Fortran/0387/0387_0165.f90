module mod1
 contains
  function c_fun1() result(ccc)
   character :: ccc
   entry c_fun2() result(ccc) bind(c)
   ccc = 'a'
  end function
  subroutine mod_test01()
   character :: c
   c = c_fun2()
  end subroutine
end

use mod1

character :: c

call mod_test01
print *,'pass'

end
