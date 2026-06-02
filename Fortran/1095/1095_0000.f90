module m3
  implicit none
  interface
    module subroutine sub(k,b)
  implicit none
    interface
   integer pure function k(kk)
   integer,intent(in)::kk
  end
    end interface
      integer :: b(2)
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure sub
    if (size(b) /= 2) print *,4,size(b)
    if (k(1)/=1) print *,301
    if (b(2)/=2) print *,303
  end procedure
end

use m3
integer::b(2)=[1,2]
interface
   integer pure function kf(kk)
   integer,intent(in)::kk
  end
end interface
call sub(kf,b)
print *,'sngg062f : pass'
end
   integer pure function kf(kk)
   integer,intent(in)::kk
   kf=kk
  end
