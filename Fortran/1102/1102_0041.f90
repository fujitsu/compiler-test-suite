module m1
    implicit none
interface
  function abs(a)
  end function
end interface
    interface 
     module subroutine s01(q1,q2,w1,w2,&
q21,q22,q23,q24,&
w21,w22,w23,w24) 
    procedure(abs),pointer::q1
    procedure(q1 ),pointer::q2
    procedure(abs)::w1
    procedure(w1 )::w2
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
     module subroutine s01(q1,q2,w1,w2,&
q21,q22,q23,q24,&
w21,w22,w23,w24) 
    procedure(abs),pointer::q1
    procedure(q1 ),pointer::q2
    procedure(abs)::w1
    procedure(w1 )::w2
    procedure(q1 ),pointer::q21
    procedure(q2 ),pointer::q22
    procedure(q1 )        ::q23
    procedure(q2 )        ::q24
    procedure(w1 ),pointer::w21
    procedure(w2 ),pointer::w22
    procedure(w1 )        ::w23
    procedure(w2 )        ::w24
procedure(abs)::m
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
if (m(0.1)/=0.1) print *,100
if (q1(0.1)/=0.1) print *,101
if (w1(0.1)/=0.1) print *,102
if (q2(0.1)/=0.1) print *,103
if (w2(0.1)/=0.1) print *,104
if (genm(0.1)/=0.1) print *,200
if (genq1(0.1)/=0.1) print *,201
if (genw1(0.1)/=0.1) print *,202
if (genq2(0.1)/=0.1) print *,203
if (genw2(0.1)/=0.1) print *,204
if (q21(0.1)/=0.1) print *,301
if (q22(0.1)/=0.1) print *,302
if (q23(0.1)/=0.1) print *,303
if (q24(0.1)/=0.1) print *,304
if (w21(0.1)/=0.1) print *,401
if (w22(0.1)/=0.1) print *,402
if (w23(0.1)/=0.1) print *,403
if (w24(0.1)/=0.1) print *,404
if (genq21(0.1)/=0.1) print *,311
if (genq22(0.1)/=0.1) print *,312
if (genq23(0.1)/=0.1) print *,313
if (genq24(0.1)/=0.1) print *,314
if (genw21(0.1)/=0.1) print *,411
if (genw22(0.1)/=0.1) print *,412
if (genw23(0.1)/=0.1) print *,413
if (genw24(0.1)/=0.1) print *,414
end
end
use m1
    procedure(abs),pointer::q1
    procedure(q1 ),pointer::q2
    procedure(abs)::w1
    procedure(w1 )::w2
    procedure(q1 ),pointer::q21
    procedure(q2 ),pointer::q22
    procedure(q1 )        ::q23
    procedure(q2 )        ::q24
    procedure(w1 ),pointer::w21
    procedure(w2 ),pointer::w22
    procedure(w1 )        ::w23
    procedure(w2 )        ::w24
call s01(q1,q2,w1,w2,&
q21,q22,q23,q24,&
w21,w22,w23,w24) 
print *,'sngg211o : pass'
end
   real function   m(d)
   entry w1(d)
   entry w2(d)
   entry q23(d)
   entry q24(d)
   entry w23(d)
   entry w24(d)
   m=d
  end
