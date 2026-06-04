module m1
  interface
    module subroutine ss
    end
  end interface
end

submodule (m1) smod
  procedure(ss),pointer::p1
contains
 module   procedure  ss
 end
end

use m1
call ss

print *,'sngg527h : pass'
end

