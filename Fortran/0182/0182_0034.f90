module m1
  integer(4),parameter:: x(*)=[1,2,3]
  integer(4):: a1(3)=x
  integer(4):: nn
 interface
    module subroutine sub1
    end subroutine
  end interface
end
submodule (m1) mm1
  integer(4),allocatable:: b1(:)
contains
  module procedure sub1
   allocate(b1(3),source=x)
   if (any(a1/=x)) print *,201
   if (any(b1/=x)) print *,202
   nn=2
  end
end
use m1
   call sub1
if (nn/=2) print *,201
print *,'pass'
end
