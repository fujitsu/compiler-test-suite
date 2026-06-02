module m3
  implicit none
  interface
    module subroutine sub(p)
    implicit none
    interface
      subroutine dd()
      end
    end interface
    procedure(dd),pointer::p
    end
  end interface
end

submodule(m3)smod
contains
  module procedure sub
   call p
  end procedure
end

use m3
interface
      subroutine dd()
      end
end interface
procedure(dd),pointer::pp
pp=>dd
call sub(pp)
print *,'sngg273f : pass'
end
      subroutine dd()
      end
