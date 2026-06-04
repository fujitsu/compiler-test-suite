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
 module   subroutine ss(p)
       interface
         subroutine w
         end
       end interface
  procedure(w),pointer::p
  procedure(p),pointer::p1
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
call ss(p)
call chk

print *,'sngg571h : pass'
end
subroutine chk
rewind 9
read(9,*) k;if (k/=2) print *,901
end

         subroutine x
write(9,*) 2
         end
