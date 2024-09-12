module m0
  type y
   integer::v
  end type
end
module m1
use m0
  contains
         type(y) function w()
  w%v=100
         end
    subroutine  ss(p)
       procedure(w),pointer::p
       write(1,*) p()
    end
end

use m1
       procedure(w),pointer::x
x=>w
call ss(x)
rewind 1
read(1,*) k
if(k/=100) print *,901
print *,'pass'
end
