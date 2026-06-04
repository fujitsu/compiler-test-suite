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
       interface
         type(q) function t()
         import::q
         end 
       end interface 
    end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure    s01
    !implicit none
write(18,*)t (   )
end
end
use m1
call s01(ww)
rewind 18
read(18,*) nn
if (nn/=2)print *,600
print *,'sngg853h : pass'
end
