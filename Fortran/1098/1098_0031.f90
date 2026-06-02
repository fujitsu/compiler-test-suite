module m1
       implicit none
  interface
    real module function ss(p)
       implicit none
       procedure(w),pointer::p
    end
  end interface
  contains
    real function w(n)
     integer::n
      w=n
    end
end

submodule (m1) smod
       implicit none
contains
 module   procedure  ss
       implicit none
if ( p(2)/=2) print *,801
ss=1
 end
end

use m1
print *,'sngg745h : pass'
end
