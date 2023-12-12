module m0
  !!integer,parameter:: NUMIA_I=400, NUMFSL=100
  integer:: NUMIA_I=400, NUMFSL=100
end
module m1
 use m0,only:NUMFSL,NUMIA_I
 implicit none
contains
 subroutine s0
 end subroutine
!
 subroutine s1
  real(kind=8),dimension( NUMIA_I, NUMFSL ) :: u1,u2,u3,u4,v1,v2,v3,v4
  real(kind=8),dimension( NUMIA_I, NUMFSL ) :: ud1,ud2,ud3,ud4,vd1,vd2,vd3,vd4
 integer::k,j
u1=0
u2=0
u3=0
u4=0
v1=0
v2=0
v3=0
v4=0
ud1=0
ud2=0
ud3=0
ud4=0
vd1=0
vd2=0
vd3=0
vd4=0
do k=1,NUMIA_I
do j=1,NUMFSL
   u1(k,j) = 1
   u2(k,j) = 2
   u3(k,j) = 3
   u4(k,j) = 4
   v1(k,j) = 11
   v2(k,j) = 12
   v3(k,j) = 13
   v4(k,j) = 14
end do
end do
if (any(u1/=1)) print *,101
if (any(u2/=2)) print *,102
if (any(u3/=3)) print *,103
if (any(u4/=4)) print *,104
if (any(v1/=11)) print *,111
if (any(v2/=12)) print *,112
if (any(v3/=13)) print *,113
if (any(v4/=14)) print *,114
do k=1,NUMIA_I
do j=1,NUMFSL
   ud1(k,j) = 1
   ud2(k,j) = 2
   ud3(k,j) = 3
   ud4(k,j) = 4
   vd1(k,j) = 11
   vd2(k,j) = 12
   vd3(k,j) = 13
   vd4(k,j) = 14
end do
end do
if (any(ud1/=1)) print *,101
if (any(ud2/=2)) print *,102
if (any(ud3/=3)) print *,103
if (any(ud4/=4)) print *,104
if (any(vd1/=11)) print *,111
if (any(vd2/=12)) print *,112
if (any(vd3/=13)) print *,113
if (any(vd4/=14)) print *,114
!$omp parallel &
!$omp    firstprivate(u1,u3,u4) &
!$omp    firstprivate(v1,v3,v4) &
!$omp    firstprivate(ud1,ud3,ud4) &
!$omp    firstprivate(vd1,vd3,vd4) 
if (any(u1/=1)) print *,2101
if (any(u2/=2)) print *,2102
if (any(u3/=3)) print *,2103
if (any(u4/=4)) print *,2104
if (any(v1/=11)) print *,2111
if (any(v2/=12)) print *,2112
if (any(v3/=13)) print *,2113
if (any(v4/=14)) print *,2114
if (any(ud1/=1)) print *,2301
if (any(ud2/=2)) print *,2302
if (any(ud3/=3)) print *,2303
if (any(ud4/=4)) print *,2304
if (any(vd1/=11)) print *,2411
if (any(vd2/=12)) print *,2412
if (any(vd3/=13)) print *,2413
if (any(vd4/=14)) print *,2414
!$omp parallel &
!$omp    firstprivate(u1,u3,u4) &
!$omp    firstprivate(v1,v3,v4) &
!$omp    firstprivate(ud1,ud3,ud4) &
!$omp    firstprivate(vd1,vd3,vd4) 
if (any(u1/=1)) print *,2101
if (any(u2/=2)) print *,2102
if (any(u3/=3)) print *,2103
if (any(u4/=4)) print *,2104
if (any(v1/=11)) print *,2111
if (any(v2/=12)) print *,2112
if (any(v3/=13)) print *,2113
if (any(v4/=14)) print *,2114
if (any(ud1/=1)) print *,2301
if (any(ud2/=2)) print *,2302
if (any(ud3/=3)) print *,2303
if (any(ud4/=4)) print *,2304
if (any(vd1/=11)) print *,2411
if (any(vd2/=12)) print *,2412
if (any(vd3/=13)) print *,2413
if (any(vd4/=14)) print *,2414

!$omp end parallel
!$omp end parallel
 end subroutine
end
use m1
call s1
print *,'pass' 
end
