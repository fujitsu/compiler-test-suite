module m1
  interface
    module subroutine s1
    end
    module subroutine s2
    end
  end interface
end

submodule (m1) smod
  dimension::s2(2)
contains
 module   procedure  s1
  s2(2)=1.0
  if (s2(2)/=1) print *,2002
 end
 end
submodule (m1) smod2
contains
 module   procedure  s2
write(7,*)111
 end
end

use m1
call s1
call s2
rewind 7
read(7,*) n
if (n/=111) print *,111

print *,'sngg565h : pass'
end

subroutine s2
print *,222
end
