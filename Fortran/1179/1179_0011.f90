module m0
  implicit none
  type y
   integer::v
  end type
end
module m1
use m0
  implicit none
  interface
    module subroutine  ss(p)
  implicit none
       procedure(w),pointer::p
    end
  end interface
  contains
         type(y) function w()
  implicit none
  w%v=1
         end
end

submodule (m1) smod
  implicit none
contains
 module   procedure  ss
  implicit none
write(7,*) p()
 end
end

print *,'sngg895h : pass'
end
