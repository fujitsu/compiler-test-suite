module m0
  type q
    integer::v
  end type
  type w
    integer::v
  end type
contains
  function wf(d) result(r)
   type(w)::r,d
   r=d
  end 
  function qf(d) result(r)
   type(q)::r,d
   r=d
  end 
end
module m1
use m0
    implicit none
  interface operator(/=)
    procedure opq
  end interface
    interface 
  module function opq(d1,d2) result(r)
    type(q),intent(in)::d1,d2
    type(w)::r
  end
  module function opqw(d1) result(r)
    type(w),intent(in)::d1
    logical::r
  end
     module function   s01(qq,ww,q1,q2,w1,w2,&
q21,q22,q23,q24,&
w21,w22,w23,w24) result(r) 
    procedure(qf     ),pointer::qq
    procedure(qf     )::ww
    procedure(qf),pointer::q1
    procedure(q1 ),pointer::q2
    procedure(qf)::w1
    procedure(q1 )::w2
    procedure(q1 ),pointer::q21
    procedure(q2 ),pointer::q22
    procedure(q1 )        ::q23
    procedure(q2 )        ::q24
    procedure(w1 ),pointer::w21
    procedure(w2 ),pointer::w22
    procedure(w1 )        ::w23
    procedure(w2 )        ::w24
type(w)::r
end 
    end interface 
end 

submodule (m1) smod
contains 
  module procedure opq
    implicit none
    r%v=d1%v
    if(d1%v/=d2%v) r%v=9999
  end
  module procedure opqw
    implicit none
    r=.false.
    if (d1%v/=2)r=.true.
  end
     module procedure   s01
    implicit none
procedure(qf)::m
interface genm
  procedure::m
end interface
interface genq1
  procedure::q1
end interface
interface genq2
  procedure::q2
end interface
interface genw1
  procedure::w1
end interface
interface genw2
  procedure::w2
end interface
interface genq21
  procedure::q21
end interface
interface genq22
  procedure::q22
end interface
interface genq23
  procedure::q23
end interface
interface genq24
  procedure::q24
end interface
interface genw21
  procedure::w21
end interface
interface genw22
  procedure::w22
end interface
interface genw23
  procedure::w23
end interface
interface genw24
  procedure::w24
end interface
q1=>m
q2=>m
q21=>m
q22=>m
w21=>m
w22=>m
qq=>ww
if (opqw(qq(q(2))/=q(2))) print *,1001
if (opqw(ww(q(2))/=q(2))) print *,1002
if (opqw(m(q(2))/=q(2))) print *,100
if (opqw(q1(q(2))/=q(2))) print *,101
if (opqw(w1(q(2))/=q(2))) print *,102
if (opqw(q2(q(2))/=q(2))) print *,103
if (opqw(w2(q(2))/=q(2))) print *,104
if (opqw(genm(q(2))/=q(2))) print *,200
if (opqw(genq1(q(2))/=q(2))) print *,201
if (opqw(genw1(q(2))/=q(2))) print *,202
if (opqw(genq2(q(2))/=q(2))) print *,203
if (opqw(genw2(q(2))/=q(2))) print *,204
if (opqw(q21(q(2))/=q(2))) print *,301
if (opqw(q22(q(2))/=q(2))) print *,302
if (opqw(q23(q(2))/=q(2))) print *,303
if (opqw(q24(q(2))/=q(2))) print *,304
if (opqw(w21(q(2))/=q(2))) print *,401
if (opqw(w22(q(2))/=q(2))) print *,402
if (opqw(w23(q(2))/=q(2))) print *,403
if (opqw(w24(q(2))/=q(2))) print *,404
if (opqw(genq21(q(2))/=q(2))) print *,311
if (opqw(genq22(q(2))/=q(2))) print *,312
if (opqw(genq23(q(2))/=q(2))) print *,313
if (opqw(genq24(q(2))/=q(2))) print *,314
if (opqw(genw21(q(2))/=q(2))) print *,411
if (opqw(genw22(q(2))/=q(2))) print *,412
if (opqw(genw23(q(2))/=q(2))) print *,413
if (opqw(genw24(q(2))/=q(2))) print *,414
r=w(2)
end
end
use m1
    procedure(qf     ),pointer::qq
    procedure(qf     )::ww
    procedure(qf ),pointer::q1
    procedure(q1 ),pointer::q2
    procedure(qf )::w1
    procedure(w1 )::w2
    procedure(q1 ),pointer::q21
    procedure(q2 ),pointer::q22
    procedure(q1 )        ::q23
    procedure(q2 )        ::q24
    procedure(w1 ),pointer::w21
    procedure(w2 ),pointer::w22
    procedure(w1 )        ::w23
    procedure(w2 )        ::w24
if( opqw(s01(qq,ww,q1,q2,w1,w2,&
q21,q22,q23,q24,&
w21,w22,w23,w24) )) print *,2001
print *,'sngg808h : pass'
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
use m0
type(q)::d,r
r=d
end
