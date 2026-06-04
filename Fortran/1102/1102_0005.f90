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
type x1
  procedure(ss),nopass,pointer::q1
  procedure(tt),nopass,pointer::q2
  procedure(uu),nopass,pointer::q3
  procedure(vv),nopass,pointer::q4
end type
type(x1)::v2
end

submodule (m1) smod
type x2
  procedure(ss),nopass,pointer::p1
  procedure(tt),nopass,pointer::p2
  procedure(uu),nopass,pointer::p3
  procedure(vv),nopass,pointer::p4
end type
type(x2)::v1
contains
 module   procedure  ss
 v1%p1=>ss
 v1%p2=>tt
 v1%p3=>uu
 v1%p4=>vv
 v2%q1=>ss
 v2%q2=>tt
 v2%q3=>uu
 v2%q4=>vv
 !call p1
 call v1%p2
 if (v1%p3()/=1) print *,1001
 if (v1%p4()/=1) print *,1004
 !call q1
 call v2%q2
 if (v2%q3()/=1) print *,1101
 if (v2%q4()/=1) print *,1104
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
 call v2%q1
 call v2%q2
 if (v2%q3()/=1) print *,1101
 if (v2%q4()/=1) print *,1104

print *,'sngg168o : pass'
end

