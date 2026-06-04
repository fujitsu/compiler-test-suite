module m3
  implicit none
  interface
    module subroutine subx(k)
    implicit none
    interface
      function k()
      end
    end interface
    end
    module subroutine sub(k)
    implicit none
    interface
      function k()
      end
    end interface
    end
  end interface
end

submodule(m3)smod
contains
  module procedure subx
    implicit none
   if( k()/=1) print *,901
  end procedure
  module subroutine sub(k)
    implicit none
    interface
      function k()
      end
    end interface
   if( k()/=1) print *,9011
  end 
end

use m3
interface
      function k()
      end
end interface
call sub(k)
call subx(k)
print *,'sngg290o : pass'
end
   function k()
        k=1
  end
