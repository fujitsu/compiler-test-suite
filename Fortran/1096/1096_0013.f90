module m1
  interface
    module subroutine s1
    end
    module subroutine ss
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
write(10,*) 1
 end
 module   procedure  ss
p1=>s1
call gen
call p1
 end
end

use m1
call ss
call chk

print *,'sngg522h : pass'
end
subroutine chk
rewind 10
read(10,*) k;if (k/=1) print *,901
read(10,*) k;if (k/=1) print *,904
end

