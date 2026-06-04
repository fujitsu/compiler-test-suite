module m0
  type q
    integer::v
  end type
  contains
  type(q) function ww()
   ww=q(2)
  end 
end
module m1
use m0
    implicit none
    interface 
     module subroutine    s01(t)
     procedure(ww)::t
     end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure    s01
    !implicit none
write(17,*)ww(   )
end
end
use m1
call s01(ww)
rewind 17
read(17,*) nn
if (nn/=2)print *,600
print *,'sngg852h : pass'
end
