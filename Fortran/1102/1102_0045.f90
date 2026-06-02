module m1
    implicit none
interface
   integer function len(d)
   character(*)::d
  end function
end interface
    interface 
     module function   s01(q1,q2,w1,w2,&
q21,q22,q23,q24,&
w21,w22,w23,w24) 
    implicit none
    procedure(len),pointer::q1
    procedure(q1 ),pointer::q2
    procedure(len)::w1
    procedure(w1 )::w2
    procedure(q1 ),pointer::q21
    procedure(q2 ),pointer::q22
    procedure(q1 )        ::q23
    procedure(q2 )        ::q24
    procedure(w1 ),pointer::w21
    procedure(w2 ),pointer::w22
    procedure(w1 )        ::w23
    procedure(w2 )        ::w24
    real s01
end 
    end interface 
end 

submodule (m1) smod
    implicit none
contains 
     module procedure  s01
procedure(len)::m
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
if (m('abcd')/=4) print *,100
if (q1('abcd')/=4) print *,101
if (w1('abcd')/=4) print *,102
if (q2('abcd')/=4) print *,103
if (w2('abcd')/=4) print *,104
if (genm('abcd')/=4) print *,200
if (genq1('abcd')/=4) print *,201
if (genw1('abcd')/=4) print *,202
if (genq2('abcd')/=4) print *,203
if (genw2('abcd')/=4) print *,204
if (q21('abcd')/=4) print *,301
if (q22('abcd')/=4) print *,302
if (q23('abcd')/=4) print *,303
if (q24('abcd')/=4) print *,304
if (w21('abcd')/=4) print *,401
if (w22('abcd')/=4) print *,402
if (w23('abcd')/=4) print *,403
if (w24('abcd')/=4) print *,404
if (genq21('abcd')/=4) print *,311
if (genq22('abcd')/=4) print *,312
if (genq23('abcd')/=4) print *,313
if (genq24('abcd')/=4) print *,314
if (genw21('abcd')/=4) print *,411
if (genw22('abcd')/=4) print *,412
if (genw23('abcd')/=4) print *,413
if (genw24('abcd')/=4) print *,414
end
end
use m1
    procedure(len),pointer::q1
    procedure(q1 ),pointer::q2
    procedure(len)::w1
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
print *,'sngg215o : pass'
end
   integer function   m(d)
   implicit integer(w,d,q)
   character(*)::d
   entry w1(d)
   entry w2(d)
   entry q23(d)
   entry q24(d)
   entry w23(d)
   entry w24(d)
   if (len(d)/=4) print *,1009,len(d)
   m=len(d)
  end
