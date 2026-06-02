module n
implicit none
type x
 integer ::x1=1
 contains
  procedure::prc
  generic::gen=>prc
end type
contains
 subroutine prc(d)
  class(x)::d
  if (d%x1/=1) print *,1001
  d%x1=2
 end subroutine
end
module m1x
  use n,y=>x
end
module m2x
use m1x
end
module m1
use m2x
implicit none
 private
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
class(y),allocatable::v
allocate(v)
if (v%x1/=1) print *,101
call v%prc()
if (v%x1/=2) print *,102
v%x1=1
call v%gen()
if (v%x1/=2) print *,103
  end subroutine sub1
end
submodule (m1:m1sub) m2sub
end
submodule (m1:m2sub) m3sub
end
submodule (m1:m3sub) m4sub
contains
  module subroutine sub2()
implicit none
class(y),allocatable::v
allocate(v)
if (v%x1/=1) print *,101
call v%prc()
if (v%x1/=2) print *,102
v%x1=1
call v%gen()
if (v%x1/=2) print *,103
  end 
end 

use m1
call sub1
call sub2

print *,'sngg143o : pass'
end
