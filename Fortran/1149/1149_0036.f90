module n
procedure(foo2),pointer::foo3
contains
subroutine foo2(n)
integer::n
if (n/=2) print *,902
end subroutine
end
module m1
use n
implicit none
 private ::foo2,foo3
public::sub1,set,sub2
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub1()
     end subroutine
  end interface
contains
subroutine set
 foo3=>foo2
end subroutine
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
call foo2(2 )
call foo3(2 )
  end
end 
submodule (m1:m1sub) m2sub
end
submodule (m1:m2sub) m3sub
end
submodule (m1:m3sub) m4sub
end
submodule (m1:m4sub) m5sub
end
submodule (m1:m5sub) m6sub
contains
  module subroutine sub2()
implicit none
call foo2(2 )
call foo3(2 )
  end
end 

use m1
call set
call sub1
call sub2

print *,'sngg094o : pass'
end
