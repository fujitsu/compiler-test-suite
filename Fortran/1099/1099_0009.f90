module m0
  type q
    integer::v
  end type
  type w
    integer::v
  end type
  interface operator(/=)
    procedure opq
  end interface
contains
  function wf(d) result(r)
   type(w)::r,d
   r=d
  end 
  function qf(d) result(r)
   type(q)::r,d
   r=d
  end 
  function opq(d1,d2) result(r)
    logical::r
    type(q),intent(in)::d1,d2
    r=d1%v/=d2%v
  end
end
module m1
use m0
    implicit none
    interface 
     module function   s01(ww)
    procedure(type(q))::ww
    integer::s01
end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure  s01
    implicit none
s01=2
if (ww(q(2))/=q(2)) print *,1002
!write(1,*)ww(q(2))
end
end
use m1
    procedure(type(q))::ww
if( s01(ww) /=2) print *,2001
print *,'sngg785h : pass'
end
   type(q) function   m(d)
use m0
implicit type(q)(d,w,q)
   entry ww(d)
   entry w1(d)
   entry w2(d)
   entry q23(d)
   entry q24(d)
   entry w23(d)
   entry w24(d)
   m=d
  end
