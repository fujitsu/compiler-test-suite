module m1
contains
subroutine sub(a,b,c,d,e,f,i)
real(4),value::a
real(8),value::b
real(16),value::c
complex(4),value ::d
complex(8),value ::e
complex(16),value ::f
integer(4),value::i
if (abs(a-1)>0.0001)print *,'error-01'
if (abs(b-2)>0.0001)print *,'error-02'
if (abs(c-3)>0.0001)print *,'error-03'
if (abs(d-(3,4))>0.001)print *,'error-4'
if (abs(e-(5,6))>0.001)print *,'error-5'
if (abs(f-(7,8))>0.001)print *,'error-6'
if (i/=9)print *,'error-7'
a=1.2345
b=1.2345
c=1.2345
d=1.2345
e=1.2345
f=1.2345
i=1
return
entry ent(i,f,e,d,c,b,a)
if (abs(a-11)>0.0001)print *,'error-11'
if (abs(b-12)>0.0001)print *,'error-12'
if (abs(c-13)>0.0001)print *,'error-r3'
if (abs(d-(13,14))>0.001)print *,'error-14'
if (abs(e-(15,16))>0.001)print *,'error-15'
if (abs(f-(17,18))>0.001)print *,'error-16'
if (i/=19)print *,'error-7'
a=1.2345
b=1.2345
c=1.2345
d=1.2345
e=1.2345
f=1.2345
i=1
end subroutine
end
use m1
call sub(1._4 , 2._8 , 3._16 ,(3._4,4._4) , (5._8,6._8) , (7._16,8._16),9)
call ent( a=11._4 , b=12._8 , c=13._16 ,d=(13._4,14._4) , e=(15._8,16._8) , f=(17._16,18._16), i=19)

print *,'pass'
end




