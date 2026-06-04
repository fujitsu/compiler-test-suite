module m3
  implicit none
  interface
    module subroutine sub(k)
    implicit none
    interface
      subroutine k()
      end
    end interface
    end
  end interface
end

submodule(m3)smod
contains
  module subroutine sub(k)
    !!!implicit none
    interface
      subroutine k()
      end
    end interface
  end 
end

use m3
print *,'sngg286o : pass'
end
   subroutine k()
use m3
  end
