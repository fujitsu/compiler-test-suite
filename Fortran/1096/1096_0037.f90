module m1
  interface
    module subroutine s1
    end
  end interface
end

submodule (m1) smod
  procedure(s1),pointer::p1
  interface gen
    procedure::p1
  end interface
contains
 module   procedure  s1
 end
 end

use m1
call s1

print *,'sngg555h : pass'
end

