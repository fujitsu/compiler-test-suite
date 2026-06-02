module m1
  interface
    module subroutine ss
    end
    module subroutine tt
    end
  end interface
end

submodule (m1) smod
  procedure(ss),pointer::p1
  procedure(tt),pointer::p2
contains
 module   procedure  ss
 end
 module   subroutine tt
 end
end

use m1
call ss
call tt
print *,'sngg066p : pass'
end

