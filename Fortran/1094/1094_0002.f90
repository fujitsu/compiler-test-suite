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
write(4,*) 1
 end
end

submodule (m1:smod) smod2
  procedure(s1),pointer::p1
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

print *,'sngg523h : pass'
end
subroutine chk
rewind 4
read(4,*) k;if (k/=1) print *,901
read(4,*) k;if (k/=1) print *,904
end

