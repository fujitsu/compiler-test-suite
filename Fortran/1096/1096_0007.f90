module m1
  interface
    module subroutine s1
    end
    module subroutine s2(k)
    end
    module subroutine s3(a)
    end
  end interface
   interface gen
     procedure s1,s2,s3
   end interface
end

submodule (m1) smod
contains
    module procedure s1
write(1,*) 1
    end
    module procedure s2
write(1,*) k
    end
    module procedure s3
write(1,*) a
    end
end


use m1
call gen
call gen(2)
call gen(3.0)
call chk

print *,'sngg509h : pass'
end
subroutine chk
rewind 1
read(1,*) k;if (k/=1) print *,901
read(1,*) k;if (k/=2) print *,902
read(1,*) a;if (a/=3) print *,903
end

