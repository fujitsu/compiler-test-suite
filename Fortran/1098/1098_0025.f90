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
 module   procedure  ss
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

print *,'sngg530h : pass'
end
subroutine chk
rewind 3
read(3,*) k;if (k/=2) print *,901
end

         subroutine x
write(3,*) 2
         end
