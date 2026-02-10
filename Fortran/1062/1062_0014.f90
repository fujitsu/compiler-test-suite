module m3
  implicit none
  contains
  subroutine sub(k)
    implicit none
    interface
      !!!integer pure function k()
      pure function k()
       !!!implicit none
      end
    end interface
  if (k()/=200) print *,2001
  end subroutine
end

use m3
  interface
   integer pure function kf()
   end
  end interface
call sub(kf)
print *,'sngg164h : pass'
end
   integer pure function kf()
   kf=200
  end
