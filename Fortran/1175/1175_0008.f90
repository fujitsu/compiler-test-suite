module m0
  type y
   integer::v
  end type
  contains
         type(y) function w(n)
  w%v=n
         end
end
module m1
use m0
  interface
     module function ss(p)
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  ss
  procedure(p),pointer::p1
ss=1
 end
end

use m1
  procedure(w),pointer::p
p=>w
write(16,*) ss(p)

print *,'sngg733h : pass'
end
subroutine chk
rewind 15
read(15,*) k;if (k/=2) print *,901
read(15,*) k;if (k/=2) print *,902
read(15,*) k;if (k/=2) print *,903
end

         type (y) function q(n)
           use m0
write(15,*) n
q%v=n
         end
