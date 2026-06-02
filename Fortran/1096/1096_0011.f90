module m1
  interface
    subroutine s1
    end
  end interface
  procedure(s1),pointer::p1
  interface gen
    procedure::p1
  end interface
end

    subroutine s1
write(8,*) 1
    end

use m1
p1=>s1
call gen
call p1
call chk

print *,'sngg520h : pass'
end
subroutine chk
rewind 8
read(8,*) k;if (k/=1) print *,901
read(8,*) k;if (k/=1) print *,904
end

