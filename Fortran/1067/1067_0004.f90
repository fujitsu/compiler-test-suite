module mod
  interface
    module subroutine sub(k)
    interface
      function k()
      end
    end interface
    end
  end interface
end

submodule(mod)smod
contains
  module procedure sub
   if( k()/=1) print *,901
  end procedure
end

use mod
interface
      function k()
      end
end interface
call sub(k)
print *,'sngg389o : pass'
end
   function k()
        k=1
  end
