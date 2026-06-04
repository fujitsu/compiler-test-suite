module m1
  interface
    module real function ss(p)
     implicit none
       interface
         function w(n)
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
     implicit none
contains
 module   procedure  ss
  procedure(p),pointer::p1
 end
end

use m1

print *,'sngg729h : pass'
end
