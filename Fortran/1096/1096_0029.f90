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
contains
 module   procedure  s1
write(23,*) 1
 end
 module   procedure  ss
p1=>s1
call p1
 end
end

use m1
call ss
call chk

print *,'sngg547h : pass'
end
subroutine chk
rewind 23
read(23,*) k;if (k/=1) print *,901
end

