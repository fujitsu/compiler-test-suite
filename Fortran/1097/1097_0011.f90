module m3
  implicit none
  interface
    module subroutine sub(k)
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
end interface
call sub(k)
print *,'sngg607h : pass'
end
   subroutine k()
!print *,'called K'
  end
