module m0
  type x
   integer::v
  end type
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
    type(x) module function ss(p)
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  ss
  procedure(p),pointer::p1
ss=x(1)
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
write(9,*) ss(p)

print *,'sngg898h : pass'
end
