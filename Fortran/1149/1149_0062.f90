module n
  interface gen
    procedure foo1
  end interface
contains
character function  foo1(a)
real::a
if (a/=1.) print *,901
foo1='1'
end 
end
module m1
use n,only:g=>gen,f=>foo1
implicit none
 private ::g,f
public::sub1,sub2
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
if (f(1.)/='1') print *,1001
if (g(1.)/='1') print *,1001
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
if (f(1.)/='1') print *,1001
if (g(1.)/='1') print *,1001
  end 
end 

use m1
call sub1
call sub2

print *,'sngg122o : pass'
end
