module m3
  implicit none
  interface
   integer pure function if(kk)
   integer,intent(in)::kk
   end
   module subroutine sub(k,n)
    implicit none
    interface
      integer pure function k(kk)
      implicit none
      integer,intent(in)::kk
      end
    end interface
    integer,external::n
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub
    implicit none
    if (k(200)/=200) print *,301
    if (n()/=1) print *,901
  end 
end

use m3
    implicit none
  interface
   integer pure function kf(kk)
      implicit none
   integer,intent(in)::kk
   end
  end interface
integer,external::nn
call sub(kf,nn)
print *,'sngg166h : pass'
end
   integer pure function kf(kk)
      implicit none
   integer,intent(in)::kk
   kf=kk
  end
integer function nn()
    implicit none
nn=1
end

