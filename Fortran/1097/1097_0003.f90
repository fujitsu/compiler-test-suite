module m1
  interface
    module subroutine s1
    end
    module subroutine s2
    end
  end interface
end

submodule (m1) smod
  allocatable::s2
contains
 module   procedure  s1
  allocate(s2,source=1.0)
  if (s2/=1) print *,2002
 end
 end
submodule (m1) smod2
contains
 module   procedure  s2
write(4,*)111
 end
end

use m1
call s1
call s2
rewind 4
read(4,*) n
if (n/=111) print *,111

print *,'sngg564h : pass'
end

subroutine s2
print *,222
end
