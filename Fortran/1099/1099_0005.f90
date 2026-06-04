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
     module function   s01(q1,q2,w1,w2,&
q21,q22,q23,q24,&
w21,w22,w23,w24) 
    procedure(qf ),pointer::q1
    procedure(q1 ),pointer::q2
    procedure(qf )::w1
    procedure(q1 )::w2
    procedure(q1 ),pointer::q21
    procedure(q2 ),pointer::q22
    procedure(q1 )        ::q23
    procedure(q2 )        ::q24
    procedure(w1 ),pointer::w21
    procedure(w2 ),pointer::w22
    procedure(w1 )        ::w23
    procedure(w2 )        ::w24
end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure  s01
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
s01=2
q1=>m
q2=>m
q21=>m
q22=>m
w21=>m
w22=>m
if (m(q(2))/=q(2)) print *,100
if (q1(q(2))/=q(2)) print *,101
if (w1(q(2))/=q(2)) print *,102
if (q2(q(2))/=q(2)) print *,103
if (w2(q(2))/=q(2)) print *,104
if (genm(q(2))/=q(2)) print *,200
if (genq1(q(2))/=q(2)) print *,201
if (genw1(q(2))/=q(2)) print *,202
if (genq2(q(2))/=q(2)) print *,203
if (genw2(q(2))/=q(2)) print *,204
if (q21(q(2))/=q(2)) print *,301
if (q22(q(2))/=q(2)) print *,302
if (q23(q(2))/=q(2)) print *,303
if (q24(q(2))/=q(2)) print *,304
if (w21(q(2))/=q(2)) print *,401
if (w22(q(2))/=q(2)) print *,402
if (w23(q(2))/=q(2)) print *,403
if (w24(q(2))/=q(2)) print *,404
if (genq21(q(2))/=q(2)) print *,311
if (genq22(q(2))/=q(2)) print *,312
if (genq23(q(2))/=q(2)) print *,313
if (genq24(q(2))/=q(2)) print *,314
if (genw21(q(2))/=q(2)) print *,411
if (genw22(q(2))/=q(2)) print *,412
if (genw23(q(2))/=q(2)) print *,413
if (genw24(q(2))/=q(2)) print *,414
end
end
use m1
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
if( s01(q1,q2,w1,w2,&
q21,q22,q23,q24,&
w21,w22,w23,w24) /=2) print *,2001
print *,'sngg781h : pass'
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
