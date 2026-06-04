module m0
  type y
   integer::v
  end type
  type z
   integer::v
  end type
  contains
         type(y) function w(n)
            type(z)::n
  w%v=n%v
end
end
module m1
use m0
  interface
    module subroutine ss(p)
       procedure(w),pointer::p
    end
  end interface
         end

submodule (m1) smod
contains
 module   procedure  ss
  procedure(p),pointer::p1
 end
end

use m1
       interface
         type (y) function q(n)
           use m0
           type(z)::n
         end
       end interface
  procedure(q),pointer::p
p=>w
call  ss(p)

print *,'sngg899h : pass'
end
