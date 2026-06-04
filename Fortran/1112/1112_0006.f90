module m1
  interface
    module subroutine ss
    end
    module subroutine tt
    end
    module subroutine uu
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
 end
 module   subroutine tt
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
 module subroutine uu
    p1=>ss
    p2=>tt
    call p1
    call p2
    call q1
    call q2
    w1=>p1
    w2=>p2
    w3=>q1
    w4=>q2
    call w1
    call w2
    call w3
    call w4
    call z1
    call z2
    call z3
    call z4
 end
end

use m1
call ss
call tt
call uu
print *,'sngg067p : pass'
end
subroutine q1
end
subroutine q2
end
subroutine z1
end
subroutine z2
end
subroutine z3
end
subroutine z4
end

