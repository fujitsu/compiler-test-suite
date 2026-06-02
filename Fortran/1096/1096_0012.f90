module m1
  interface
    module subroutine s1
    end
  end interface
  procedure(s1),pointer::p1
  interface gen
    procedure::p1
  end interface
end

submodule (m1) smod
contains
 module   procedure  s1
write(9,*) 1
 end
end

use m1
p1=>s1
call gen
call p1
call chk

print *,'sngg521h : pass'
end
subroutine chk
rewind 9
read(9,*) k;if (k/=1) print *,901
read(9,*) k;if (k/=1) print *,904
end

