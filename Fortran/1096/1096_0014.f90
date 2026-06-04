module m1
  procedure(s1),pointer::p1
  interface
    subroutine s1
    end
  end interface
  interface gen
    procedure::p1
  end interface
end

    subroutine s1
write(11,*) 1
    end

use m1
p1=>s1
call gen
call p1
call chk

print *,'sngg525h : pass'
end
subroutine chk
rewind 11
read(11,*) k;if (k/=1) print *,901
read(11,*) k;if (k/=1) print *,904
end

