module m1
  integer(4),parameter:: x(*)=[1,2,3]
  integer::n
 interface
    module subroutine sub1
    end subroutine
  end interface
end
submodule (m1) mm1
  integer(4),allocatable:: b1(:)
contains
  module procedure sub1
   call mm1
   allocate(b1(3),source=x)
   if (any(b1/=x)) print *,202
  end
end
use m1
   call sub1
if (n/=2) print *,501
print *,'pass'
end
subroutine mm1
use m1
n=2
end
