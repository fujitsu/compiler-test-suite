module m1
  interface
    module function   s1()
    end
    module subroutine ss()
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
s1=1
 end
 module   procedure  ss
p1=>s1
if (p1()/=1) print *,901
 end
 end

use m1
call ss

print *,'sngg558h : pass'
end

