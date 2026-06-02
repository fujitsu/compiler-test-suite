module n
  interface gen
    procedure foo1,foo2
  end interface
private
public::gen
contains
subroutine foo1(a)
real::a
if (a/=1.) print *,901
end subroutine
subroutine foo2(n)
integer::n
if (n/=2) print *,902
end subroutine
end
module m1
use n
implicit none
 private ::gen
public::sub1,sub2
  interface
     module subroutine sub1()
     end subroutine
     module subroutine sub2()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
call gen (1.)
call gen (2 )
  end subroutine sub1
end submodule m1sub
submodule (m1:m1sub) m2sub
end
submodule (m1:m2sub) m3sub
end
submodule (m1:m3sub) m4sub
end
submodule (m1:m4sub) m5sub
contains
  module subroutine sub2()
implicit none
call gen (1.)
call gen (2 )
  end
end 

use m1
call sub1
call sub2

print *,'sngg114o : pass'
end
