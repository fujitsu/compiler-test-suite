module m1
  interface
    module subroutine s1
    end
    module subroutine ss
    end
  end interface
end

submodule (m1) smod
  procedure(s1)::sub
contains
 module   procedure  s1
write(15,*) 1
 end
 module   procedure  ss
call s1
call sub
 end
end

use m1
call ss
call chk

print *,'sngg536h : pass'
end
subroutine chk
rewind 15
read(15,*) k;if (k/=1) print *,901
read(15,*) k;if (k/=2) print *,902
end

subroutine sub
write(15,*) 2
end

