module m1
  procedure(s1),pointer::p1
  interface gen
    procedure::p1
  end interface
  interface
    subroutine s1
    end
  end interface
end

    subroutine s1
write(12,*) 1
    end

use m1
p1=>s1
call gen
call p1
call chk

print *,'sngg526h : pass'
end
subroutine chk
rewind 12
read(12,*) k;if (k/=1) print *,901
read(12,*) k;if (k/=1) print *,904
end

