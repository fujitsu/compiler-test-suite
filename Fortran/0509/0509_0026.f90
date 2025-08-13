module m0
  type y
   integer::v
  end type
end
module m1
use m0
  contains
    subroutine  ss(p)
       procedure(w),pointer::p
       write(3,*) p()
    end
         type(y) function w()
  w%v=100
         end
end

use m1
       procedure(w),pointer::x
x=>w
call ss(x)
rewind 3
read(3,*) k
if(k/=100) print *,901
print *,'pass'
end
