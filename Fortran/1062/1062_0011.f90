module m3
  implicit none
  interface
   integer pure function if(kk)
   integer,intent(in)::kk
   end
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
  module procedure  sub
    implicit none
    if (k(200)/=200) print *,301
  end 
end

use m3
  interface
   integer pure function kf(kk)
   integer,intent(in)::kk
   end
  end interface
call sub(kf)
print *,'sngg161h : pass'
end
   integer pure function kf(kk)
   integer,intent(in)::kk
   kf=kk
  end
