module m3
  implicit none
  interface
   module subroutine sub2(a)
   external::a
   end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub2
    !implicit none
    if (a()/=1) print *,902
  end 
end

use m3
    implicit none
real   ,external::f
call sub2(f)
print *,'sngg173h : pass'
end
function f()
f=1
end

