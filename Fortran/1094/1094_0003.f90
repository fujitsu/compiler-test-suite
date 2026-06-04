module m1
  interface
    module subroutine s1
    end
    module subroutine ss
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  s1
write(7,*) 1
 end
end

submodule (m1:smod) smod2
  procedure(s1),pointer::p1
contains
  subroutine sx
  end
end
submodule (m1:smod2) smod3
  interface gen
    procedure::p1
  end interface
contains
 module   procedure  ss
p1=>s1
call gen
call p1
 end
end


use m1
call ss
call chk

print *,'sngg524h : pass'
end
subroutine chk
rewind 7
read(7,*) k;if (k/=1) print *,901
read(7,*) k;if (k/=1) print *,904
end

