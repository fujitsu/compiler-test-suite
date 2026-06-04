module m3
  implicit none
  interface
    module subroutine sub(k)
    implicit none
    external::k
    end
  end interface
end

submodule(m3)smod
contains
  module subroutine sub(k)
    !!!implicit none
    external::k
  end 
end

use m3
print *,'sngg295o : pass'
end
   subroutine k()
  end
