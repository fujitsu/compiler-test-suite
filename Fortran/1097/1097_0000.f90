module m1
  interface
    module subroutine s1
    end
    module subroutine s2
    end
  end interface
end

submodule (m1) smod
  integer      ::s2
contains
 module   procedure  s1
  s2=1
  if (s2/=1) print *,202
 end
end

submodule (m1) smod2
contains
 module   procedure  s2
 end
 end

use m1
call s1
call s2

print *,'sngg560h : pass'
end

