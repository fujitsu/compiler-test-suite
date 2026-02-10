
module m3
  implicit none
  interface
   integer pure function if(kk)
   integer,intent(in)::kk
   end
   module subroutine sub(k,a)
    implicit none
    interface
      integer pure function k(kk)
      integer,intent(in)::kk
      end
    end interface
    integer :: a
!!!    integer :: b(k(a))
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub
  implicit none
      integer :: b(k(a))
    if (size(b) /= 2) print *,4,size(b)
  end 
end

use m3
integer::a
  interface
   integer pure function kf(kk)
   integer,intent(in)::kk
   end
  end interface
a=2
call sub(kf,a)
print *,'sngg158h : pass'
end
   integer pure function kf(kk)
   integer,intent(in)::kk
   kf=kk
  end
