module m1
  interface
    module subroutine ss(p)
     pointer::p
    end
    module subroutine tt(p)
     pointer::p
    end
    module subroutine uu(p)
     pointer::p
    end
  end interface
end

submodule (m1) smod
  procedure(ss),pointer::p1
  procedure(tt),pointer::p2
  procedure(ss)        ::q1
  procedure(tt)        ::q2
contains
 module   procedure  ss
if (p/=1) print *,1992
 end
 module   subroutine tt(p)
     pointer::p
if (p/=1) print *,1991
 end
end
submodule (m1:smod) tmod
  procedure(p1),pointer::w1
  procedure(p2),pointer::w2
  procedure(q1),pointer::w3
  procedure(q2),pointer::w4
  procedure(p1)::z1
  procedure(p2)::z2
  procedure(q1)::z3
  procedure(q2)::z4
contains
 module procedure  uu
    p1=>ss
    p2=>tt
    w1=>p1
    w2=>p2
    w3=>q1
    w4=>q2
    call p1(p)
    call p2(p)
    call q1(p)
    call q2(p)
    call w1(p)
    call w2(p)
    call w3(p)
    call w4(p)
    call z1(p)
    call z2(p)
    call z3(p)
    call z4(p)
 end
end

use m1
pointer::p
   allocate(p,source=1.)
call ss(p)
call tt(p)
call uu(p)
print *,'sngg068p : pass'
end
subroutine q1(p)
     pointer::p
if (p/=1) print *,1991
end
subroutine q2(p)
     pointer::p
if (p/=1) print *,1991
end
subroutine z1(p)
     pointer::p
if (p/=1) print *,1991
end
subroutine z2(p)
     pointer::p
if (p/=1) print *,1991
end
subroutine z3(p)
     pointer::p
if (p/=1) print *,1991
end
subroutine z4(p)
     pointer::p
if (p/=1) print *,1991
end

