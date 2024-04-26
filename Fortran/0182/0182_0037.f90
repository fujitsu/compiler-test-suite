module m1
  integer(4),parameter:: x(*)=[1,2,3]
integer::nn
 interface
    module subroutine sub1
    end subroutine
    module subroutine sub2
    end subroutine
  end interface
end
submodule (m1) mm1
  integer(4),allocatable:: b1(:)
contains
  module procedure sub1
   nn=2
   if (any(b1/=x)) print *,202
  end
  module procedure sub2
   nn=21
   allocate(b1(3),source=x)
  end
end
use m1
   call sub2
if (nn/=21) print *,301
   call sub1
if (nn/=2) print *,3011
print *,'pass'
end
