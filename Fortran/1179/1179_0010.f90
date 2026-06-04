module m0
  type y
   integer::v
  end type
end
module m1
use m0
  interface
    module subroutine  ss(p)
       procedure(w),pointer::p
    end
  end interface
  contains
         type(y) function w()
  w%v=1
         end
end

submodule (m1) smod
contains
 module   procedure  ss
write(4,*) p()
 end
end

print *,'sngg894h : pass'
end
