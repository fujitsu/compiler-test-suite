module m1
  implicit none
  interface
    module subroutine sub(q)
    !!!implicit none
    real::q
    end
  end interface
end

submodule(m1)smod
contains
  module procedure  sub
    implicit none
   if (q/=2.3) print *,10003  
  end 
end

use m1
call sub(q=2.3)
print *,'sngg755h : pass'
end
