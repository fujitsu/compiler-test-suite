module m3
  implicit none
  interface
    module subroutine sub(k,s)
    implicit none
    interface
      subroutine s()
      end
    end interface
    procedure(s)::k
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
      subroutine k()
      end
      subroutine s()
      end
end interface
call sub(k,s)
print *,'sngg606h : pass'
end
   subroutine k()
!print *,'called K'
  end
   subroutine s()
print *,'called S'
  end
