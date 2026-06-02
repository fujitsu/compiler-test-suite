module m1
  interface
    module subroutine ss
    end
    module subroutine tt
    end
    module function   uu() result(r)
    end
    module function   vv() result(r)
    end
  end interface
  procedure(ss),pointer::q1
  procedure(tt),pointer::q2
  procedure(uu),pointer::q3
  procedure(vv),pointer::q4
end

submodule (m1) smod
  procedure(ss),pointer::p1
  procedure(tt),pointer::p2
  procedure(uu),pointer::p3
  procedure(vv),pointer::p4
contains
 module   procedure  ss
 p1=>ss
 p2=>tt
 p3=>uu
 p4=>vv
 q1=>ss
 q2=>tt
 q3=>uu
 q4=>vv
 !call p1
 call p2
 if (p3()/=1) print *,1001
 if (p4()/=1) print *,1004
 !call q1
 call q2
 if (q3()/=1) print *,1101
 if (q4()/=1) print *,1104
 end
 module   subroutine tt
 end
 module   procedure  uu
 r=1
 end
 module   function   vv() result(r)
 r=1
 end
end

use m1
call ss
call tt
 if (uu()/=1) print *,2001
 if (vv()/=1) print *,2004
 call q1
 call q2
 if (q3()/=1) print *,1101
 if (q4()/=1) print *,1104

print *,'sngg167o : pass'
end

