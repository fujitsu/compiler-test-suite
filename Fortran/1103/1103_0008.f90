module m3
  implicit none
  interface
    module subroutine subx(k)
    implicit none
    interface
      subroutine k()
        implicit character(k)
      end
    end interface
    end
    module subroutine sub(k)
    implicit none
    interface
      subroutine k()
      end
    end interface
    end
  end interface
integer::i
end

submodule(m3)smod
contains
  module procedure subx
    implicit none
   call k
  end procedure
  module subroutine sub(k)
    implicit none
    interface
      subroutine k()
        implicit character(k)
      end
    end interface
   call k
  end 
end

use m3
interface
      subroutine k()
      end
end interface
call sub(k)
call subx(k)
if (i/=1) print *,201
print *,'sngg288o : pass'
end
   subroutine k()
use m3
   i=1
  end
