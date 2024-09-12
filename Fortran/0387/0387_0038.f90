module mod1
 interface
  function func1() result(rst)
   character rst
  end function
 end interface
 procedure(m1func1),pointer :: m1f1p
 procedure(func1)  ,pointer :: f1p
 contains
  function m1func1() result(rst)
   character :: rst
   rst='c'
  end function
end module

use mod1
m1f1p=>m1func1
f1p=>m1func1

print *,'pass'

end

function func1() result(rst)
 character rst
 rst='c'
end function
