module m1
  interface
    module subroutine s1
    end
    module subroutine s2(k)
    end
    module subroutine s3(a)
    end
    module subroutine ss
    end
  end interface
end

submodule (m1) smod
   interface gen
     procedure s1,s2,s3
   end interface
contains
    module procedure s1
write(3,*) 1
    end
    module procedure s2
write(3,*) k
    end
    module procedure s3
write(3,*) a
    end
    module procedure ss
call gen
call gen(2)
call gen(3.0)
    end
end


use m1
call ss
call chk

print *,'sngg511h : pass'
end
subroutine chk
rewind 3
read(3,*) k;if (k/=1) print *,901
read(3,*) k;if (k/=2) print *,902
read(3,*) a;if (a/=3) print *,903
end

