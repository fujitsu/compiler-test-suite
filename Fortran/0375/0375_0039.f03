module m1
contains
      subroutine sub(i)
      intent(in) i
      allocatable i(:)
end subroutine
      end
use m1
print *,'pass'
end
