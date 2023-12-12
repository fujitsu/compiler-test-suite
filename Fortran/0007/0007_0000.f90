!
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
 integer::k,j,v1(NUMIA_I-1),v2(NUMFSL-1)
u1=0
u2=0
u3=0
u4=0
k=2
j=1
v1=[(k,k=2,NUMIA_I)]
v2=[(k,k=2,NUMFSL)]
u1(v1,v2)=1
if (any(u1/=1)) print *,101
u2(v1,v2)=2
if (any(u2/=2)) print *,102
u3(v1,v2)=3
if (any(u3/=3)) print *,103
u4(v1,v2)=4
if (any(u4/=4)) print *,104
 end subroutine
end
use m1
  NUMFSL=100
call s1
print *,'pass'
end
