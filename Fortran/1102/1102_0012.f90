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
interface g1
 procedure::q1
end interface 
interface g2
 procedure::q2
end interface 
interface g3
 procedure::q3
end interface 
interface g4
 procedure::q4
end interface 

end

submodule (m1) smod
  procedure(ss),pointer::p1
  procedure(tt),pointer::p2
  procedure(uu),pointer::p3
  procedure(vv),pointer::p4
interface f1
 procedure::p1
end interface 
interface f2
 procedure::p2
end interface 
interface f3
 procedure::p3
end interface 
interface f4
 procedure::p4
end interface 

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
 call f2
 if (f3()/=1) print *,1001
 if (f4()/=1) print *,1004
 !call q1
 call g2
 if (g3()/=1) print *,1101
 if (g4()/=1) print *,1104
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
 call g1
 call g2
 if (g3()/=1) print *,1101
 if (g4()/=1) print *,1104

print *,'sngg179o : pass'
end

