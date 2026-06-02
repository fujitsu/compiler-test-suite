module m1
 interface
  module subroutine sub(s)
    implicit none
    interface
      subroutine s(kk)
      integer,intent(out)::kk
      end
    end interface
  end subroutine
end interface
end

submodule (m1) m1smod
contains
  module procedure  sub
    integer::nnn
    call s(nnn)
    if (nnn/=1) print *,101
  end 
end

use m1
    interface
      subroutine s(kk)
      integer,intent(out)::kk
      end
    end interface
call sub(s )
print *,'sngg209f : pass'
end

      subroutine s(kk)
      integer,intent(out)::kk
      kk=1
      end
