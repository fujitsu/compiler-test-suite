module m0
  type y
   integer::v
  end type
end
module m1
use m0
  interface
    subroutine  ss(p)
       import
       procedure(w),pointer::p
    end
  end interface
  contains
         type(y) function w()
  w%v=100
         end
end

    subroutine  ss(p)
       use m1,only:w,y
       procedure(w),pointer::p
       write(1,*) p()
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
