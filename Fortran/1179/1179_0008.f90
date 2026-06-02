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
end
module m1
use m0
  interface
    type(x) module function ss(p)
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
write(2,*) p(z(2))
 end
end

print *,'sngg892h : pass'
end
