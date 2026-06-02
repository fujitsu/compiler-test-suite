module m1
  interface
    module subroutine s2
    end
    module subroutine s1
    end
  end interface
end

submodule (m1) smod
  procedure(s1),pointer::p1
  procedure(p1),pointer::p2
  interface gen
    procedure::p1
  end interface
  interface gen2
    procedure::p2
  end interface
contains
 module   procedure  s1
  call s2
  p1=>s2
  call p1
  call gen
  p2=>p1
  call p2
  call gen2
 end
 module   procedure  s2
write(24,*) 1
 end
 end

use m1
call s1

print *,'sngg557h : pass'
end

