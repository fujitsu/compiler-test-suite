module m1
  integer(4),parameter:: x(*)=[1,2,3]
 interface
    module subroutine sub1
    end subroutine
  end interface
end
submodule (m1) mm1
  integer(4)::mm1=1
  integer(4),allocatable:: b1(:)
contains
  module procedure sub1
   allocate(b1(3),source=x)
   if (any(b1/=x)) print *,202
   if (mm1/=1) print *,204
  end
end
use m1
   call sub1
print *,'pass'
end
