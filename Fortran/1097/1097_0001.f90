module m1
  interface
    module subroutine s1
    end
    module subroutine s2
    end
  end interface
end

submodule (m1) smod
  procedure(s1)::s2
  interface gen
    procedure::s2
  end interface
contains
 module   procedure  s1
  call s2
  call gen
 end
 end
submodule (m1) smod2
contains
 module   procedure  s2
print *,222
 end
end

use m1
call s1
rewind 1
read(1,*) n
if (n/=111) print *,111

print *,'sngg562h : pass'
end

subroutine s2
write(1,*)111
end

