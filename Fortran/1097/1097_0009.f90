module m1
  interface
    module subroutine ss(p)
       interface
         subroutine w
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
contains
 module   subroutine  ss(p)
       interface
         subroutine w
         end
       end interface
       procedure(w),pointer::p
  procedure(p),pointer::p1
interface gen
   procedure::p
end interface
call p
p1=>p
call p1
call gen
 end
end

use m1
       interface
         subroutine x
         end
       end interface
  procedure(x),pointer::p
p=>x
call ss(p)
call chk

print *,'sngg573h : pass'
end
subroutine chk
rewind 10
read(10,*) k;if (k/=2) print *,901
read(10,*) k;if (k/=2) print *,902
read(10,*) k;if (k/=2) print *,903
end

         subroutine x
write(10,*) 2
         end
