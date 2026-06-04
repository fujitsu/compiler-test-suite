module m1
  interface
    module subroutine s1
    end
    module subroutine s2
    end
  end interface
end

submodule (m1) smod
  external::s2
contains
 module   procedure  s1
  call s2
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
rewind 3
read(3,*) n
if (n/=111) print *,111

print *,'sngg563h : pass'
end

subroutine s2
write(3,*)111
end
