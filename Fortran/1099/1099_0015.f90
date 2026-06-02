module m0
  type q
    integer,allocatable::v
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
     module function   s01(qq,ww)
    procedure(integer),pointer::qq
    procedure(integer)::ww
    integer::s01
end 
    end interface 
end 

submodule (m1) smod
contains 
     module function   s01(qq,ww)
    implicit none
    procedure(integer),pointer::qq
    procedure(integer)::ww
    integer::s01
s01=2
qq=>ww
if (qq((2))/=(2)) print *,1001
if (ww((2))/=(2)) print *,1002
end
end
use m1
    procedure(integer),pointer::qq
    procedure(integer)::ww
if( s01(qq,ww&
) /=2) print *,2001
print *,'sngg792h : pass'
end
   type(q) function   m(d)
use m0
implicit type(q)(d,w,q)
   entry w1(d)
   entry w2(d)
   entry q23(d)
   entry q24(d)
   entry w23(d)
   entry w24(d)
   m=d
  end
function ww(d) result(r)
   integer::d,r
     r=d
  end
