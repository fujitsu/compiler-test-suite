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
  procedure(ss)::q1
  procedure(tt)::q2
  procedure(uu)::q3
  procedure(vv)::q4
end

submodule (m1) smod
  procedure(ss)::p1
  procedure(tt)::p2
  procedure(uu)::p3
  procedure(vv)::p4
contains
 module   procedure  ss
 call p1
 call p2
 if (p3()/=1) print *,1001
 if (p4()/=1) print *,1004
 call q1
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

print *,'sngg169o : pass'
end
 subroutine p1
 end
 subroutine p2
 end
 function   p3() result(r)
 r=1
 end
 function   p4() result(r)
 r=1
 end
 subroutine q1
 end
 subroutine q2
 end
 function   q3() result(r)
 r=1
 end
 function   q4() result(r)
 r=1
 end

