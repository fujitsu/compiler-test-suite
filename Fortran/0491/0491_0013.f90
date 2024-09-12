module m1
contains
  subroutine sub(k)
    implicit none
    interface
      integer pure function k(kk)
      integer,intent(in)::kk
      end
    end interface
  end subroutine
end
use m1
print *,'pass'
end

   integer pure function kf(kk)
   integer,intent(in)::kk
   kf=kk
  end
