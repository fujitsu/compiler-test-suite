module m3
  implicit none
  interface
    module subroutine sub(k)
    implicit none
    interface
      subroutine s()
      end
    end interface
    procedure(s)::t
    procedure(t)::k
    end
  end interface
end

submodule(m3)smod
contains
  module procedure sub
   call k
  end procedure
end

use m3
interface
      subroutine kk()
      end
end interface
call sub(kk)
print *,'sngg608h : pass'
end
   subroutine kk()
!print *,'called K'
  end
