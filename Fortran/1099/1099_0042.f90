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
     module function  s01(t)
!!procedure(ww),pointer::t
       interface
         type(q) function t()
         import::q
         pointer::t
         external::t
         end 
       end interface 
    end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure    s01
procedure(vv),pointer::p
    !implicit none
p=>       t (   )
write(20,*)p (   )
       s01=2
end
end
use m1
procedure(ww),pointer::p
         p=>ww
if ( s01(p )/=2 ) print *,5005
rewind 20
read(20,*) nn
if (nn/=2)print *,600
print *,'sngg855h : pass'
end
