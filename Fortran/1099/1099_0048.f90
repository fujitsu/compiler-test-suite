module m0
  type q
    integer::v
  end type
  contains
  type(q) function vv()
   vv=q(2)
  end 
  type(q) function ww()
   pointer::ww
   external::ww
   ww=>vv
  end 
end
module m1
use m0
    implicit none
    interface 
     real module function  s01(t)
!!procedure(ww),pointer::t
    implicit none
       interface
         type(q) function t()
         import::q
    implicit none
         pointer::t
         external::t
         end 
       end interface 
    end 
    end interface 
end 

submodule (m1) smod
    implicit none
contains 
     real module function     s01(t)
    implicit none
procedure(vv),pointer::p
       interface
         type(q) function t()
         import::q
    implicit none
         pointer::t
         external::t
         end 
       end interface 
p=>       t (   )
write(26,*)p (   )
       s01=2
end
end
use m1
procedure(ww),pointer::p
         p=>ww
if ( s01(p )/=2 ) print *,5005
rewind 26
read(26,*) nn
if (nn/=2)print *,600
print *,'sngg861h : pass'
end
