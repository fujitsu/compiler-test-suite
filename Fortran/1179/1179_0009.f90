module m0
  type y
   integer::v
  end type
  type z
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
         type(y) function w(n)
            type(z)::n
  w%v=n%v
         end
end

submodule (m1) smod
contains
 module   procedure  ss
write(3,*) p(z(2))
 end
end

print *,'sngg893h : pass'
end
