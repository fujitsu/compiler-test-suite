module m1
  interface
    module subroutine ss(p)
       interface
         subroutine w(n)
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  ss
  procedure(p),pointer::p1
interface gen
   procedure::p
end interface
call p(2)
p1=>p
call p1(2)
call gen(2)
 end
end

use m1
       interface
         subroutine x(n)
         end
       end interface
  procedure(x),pointer::p
p=>x
call ss(p)
call chk

print *,'sngg574h : pass'
end
subroutine chk
rewind 2
read(2,*) k;if (k/=2) print *,901
read(2,*) k;if (k/=2) print *,902
read(2,*) k;if (k/=2) print *,903
end

         subroutine x(n)
write(2,*) n
         end
