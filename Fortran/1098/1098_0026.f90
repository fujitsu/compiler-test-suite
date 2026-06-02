module m1
  interface
    module subroutine ss(p,w)
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
 module   procedure  ss
  procedure(p),pointer::p1
call p
call x
p1=>p
call p1
 end
end

use m1
       interface
         subroutine x
         end
       end interface
  procedure(x),pointer::p
p=>x
call ss(p,x)
call chk

print *,'sngg531h : pass'
end
subroutine chk
rewind 4
read(4,*) k;if (k/=2) print *,901
read(4,*) k;if (k/=2) print *,902
read(4,*) k;if (k/=2) print *,903
end

         subroutine x
write(4,*) 2
         end
