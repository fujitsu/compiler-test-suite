module m3
  implicit none
  interface
    module subroutine subx(k)
        implicit character(k)
         external::k
      end
    module subroutine sub(k)
        implicit character(k)
         external::k
    end
  end interface
integer::i
end

submodule(m3)smod
contains
  module procedure subx
!   if ( k()/='1') print *,2002
  end procedure
  module subroutine sub(k)
        implicit character(k)
         external::k
!   if ( k()/='1') print *,2002
  end 
end

use m3
interface
      function k()
        implicit character(k)
      end
end interface
call sub(k)
call subx(k)
!if (i/=1) print *,201
print *,'sngg299o : pass'
end
   function k()
use m3
        implicit character(k)
i=1
k='1'
  end
