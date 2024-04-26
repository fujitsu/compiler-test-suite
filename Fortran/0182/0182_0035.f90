module m1
  integer(4),parameter:: x(*)=[1,2,3]
  integer(4):: a1(3)=x
integer::nn
 interface
    module subroutine sub1
    end subroutine
  end interface
end
submodule (m1) mm1
  data i/1/
contains
  module procedure sub1
   nn=2
   i=1
  end
end
use m1
   call sub1
if (nn/=2) print *,201
print *,'pass'
end
