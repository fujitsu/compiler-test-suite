module m3
  implicit none
  interface
    module subroutine sub(k)
    implicit none
    interface
      integer pure function k(kk)
      integer,intent(in)::kk
      end
    end interface
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure sub
  end procedure
end

use m3
integer::b(8)
interface
   integer pure function kf(kk)
   integer,intent(in)::kk
  end
end interface
call sub(kf)
print *,'pass'
end
   integer pure function kf(kk)
   integer,intent(in)::kk
   kf=kk
  end
