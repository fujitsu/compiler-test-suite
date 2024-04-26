module m0
  integer:: NUMIA_I=400
  integer,save:: NUMFSL
end
module m1
 use m0,only:NUMFSL,NUMIA_I
 implicit none
contains
 subroutine s0
 end subroutine
 subroutine s1
  real(kind=8),dimension( 2:NUMIA_I, 2:NUMFSL ) :: u1,u2,u3,u4
 integer::k,j
u1=0
u2=0
u3=0
u4=0
k=2
j=1
if (any(ubound(u1)/=[399,99])) print *,101
if (any(ubound(u2)/=[399,99])) print *,102
if (any(ubound(u3)/=[399,99])) print *,103
if (any(ubound(u4)/=[399,99])) print *,104
if (any(lbound(u1)/=[1,1])) print *,201
if (any(lbound(u2)/=[1,1])) print *,202
if (any(lbound(u3)/=[1,1])) print *,203
if (any(lbound(u4)/=[1,1])) print *,204
if (loc(u1)/=loc(u1(2,2))) print *,301
if (loc(u1)/=loc(u1(k,k))) print *,302
if (loc(u1)/=loc(u1(j+1,j+1))) print *,303
if (loc(u2)/=loc(u2(2,2))) print *,311
if (loc(u2)/=loc(u2(k,k))) print *,312
if (loc(u2)/=loc(u2(j+1,j+1))) print *,313
if (loc(u3)/=loc(u3(2,2))) print *,321
if (loc(u3)/=loc(u3(k,k))) print *,322
if (loc(u3)/=loc(u3(j+1,j+1))) print *,323
if (loc(u4)/=loc(u4(2,2))) print *,331
if (loc(u4)/=loc(u4(k,k))) print *,332
if (loc(u4)/=loc(u4(j+1,j+1))) print *,333
if (size(u1)/=(NUMIA_I-2+1)* (NUMFSL-2+1)) print *,401
if (size(u2)/=(NUMIA_I-2+1)* (NUMFSL-2+1)) print *,402
if (size(u3)/=(NUMIA_I-2+1)* (NUMFSL-2+1)) print *,403
if (size(u4)/=(NUMIA_I-2+1)* (NUMFSL-2+1)) print *,404
 end subroutine
end
use m1
  NUMFSL=100
call s1
print *,'pass'
end
