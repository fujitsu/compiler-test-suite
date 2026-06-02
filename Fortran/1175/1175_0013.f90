module m1
  interface
    module subroutine s1(z)
       interface
         subroutine z
         end
       end interface
    end
    module subroutine ss(w)
       interface
         subroutine w
         end
       end interface
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  s1
write(17,*) 1
 end
 module   procedure  ss
  procedure(w),pointer::p1
p1=>w
call p1
 end
end

use m1
       interface
         subroutine x
         end
       end interface
call ss(x)
call chk

print *,'sngg738h : pass'
end
subroutine chk
rewind 17
read(17,*) k;if (k/=2) print *,901
end

         subroutine x
write(17,*) 2
         end
