module m1
  interface
    module subroutine s1
    end
    module subroutine s2(k)
    end
    module subroutine s3(a)
    end
  end interface
  procedure(s1),pointer::p1
  procedure(s2),pointer::p2
  procedure(s3),pointer::p3
  interface gen
    procedure::p1,p2,p3
  end interface
end

submodule (m1) smod
contains
    module procedure s1
write(7,*) 1
    end
    module procedure s2
write(7,*) k
    end
    module procedure s3
write(7,*) a
    end
end


use m1
p1=>s1
p2=>s2
p3=>s3
call gen
call gen(2)
call gen(3.0)
call p1
call p2(2)
call p3(3.0)
call chk

print *,'sngg516h : pass'
end
subroutine chk
rewind 7
read(7,*) k;if (k/=1) print *,901
read(7,*) k;if (k/=2) print *,902
read(7,*) a;if (a/=3) print *,903
read(7,*) k;if (k/=1) print *,904
read(7,*) k;if (k/=2) print *,905
read(7,*) a;if (a/=3) print *,906
end

