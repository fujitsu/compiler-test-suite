module m0
  type y
   integer::v
  end type
  contains
         type(y) function w()
  w%v=100
         end
end
module m1
use m0
  interface
    module subroutine  ss(p)
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  ss
write(11,*) p()
 end
end

use m1
       procedure(w),pointer::x
x=>w
call ss(x)
rewind 11
read(11,*) k;if(k/=100) print *,901
print *,'sngg911h : pass'
end
