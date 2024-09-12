module m3
  implicit none
  interface
    module subroutine sub(k)
  implicit none
    interface
   integer pure function k()
  end
    end interface
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module subroutine sub(k)
  implicit none
    interface
      integer pure function k()
      end
    end interface
    if (k()/=1) print *,301
  end 
end

use m3
interface
   integer pure function kf()
  end
end interface
call sub(kf)
print *,'pass'
end
   integer pure function kf()
   kf=1
  end
