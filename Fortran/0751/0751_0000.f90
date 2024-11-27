module m0
  integer,parameter:: NUMIA_I=400, NUMFSL=100
  integer:: NUMIA_I1=400, NUMFSL1=100
end
module m1
 use m0,only:NUMFSL,NUMIA_I,NUMFSL1,NUMIA_I1
 implicit none
contains
 subroutine s0
 end subroutine
 subroutine s1
  real(kind=8),dimension( NUMIA_I, NUMFSL ) :: u1,u2,u3,u4
  real(kind=8),dimension( NUMIA_I1, NUMFSL1 ) :: v1,v2,v3,v4
  real(kind=8),dimension( NUMIA_I, NUMFSL ) :: ud1,ud2,vd3,vd4
  real(kind=8),dimension( NUMIA_I1, NUMFSL1 ) :: ud3,ud4,vd1,vd2
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
do k=1,NUMIA_I-1
do j=1,NUMFSL-1
   u1(k,j) = 1
   u2(k,j) = 2
   u3(k,j) = 3
   u4(k,j) = 4
   v1(k,j) = 11
   v2(k,j) = 12
   v3(k,j) = 13
   v4(k,j) = 14
   u1(k+1,j+1)= u1(k,j)+ v1(k,j)
   u2(k+1,j+1)= u2(k,j)+ v2(k,j)
   u3(k+1,j+1)= u3(k,j)+ v3(k,j)
   u4(k+1,j+1)= u4(k,j)+ v4(k,j)
end do
end do
write(1,*) u1
write(1,*) u2
write(1,*) u3
write(1,*) u4
write(1,*) v1
write(1,*) v2
write(1,*) v3
write(1,*) v4
do k=1,NUMIA_I-1
do j=1,NUMFSL-1
   ud1(k,j) = 1
   ud2(k,j) = 2
   ud3(k,j) = 3
   ud4(k,j) = 4
   vd1(k,j) = 11
   vd2(k,j) = 12
   vd3(k,j) = 13
   vd4(k,j) = 14
   ud1(k+1,j+1)= ud1(k,j)+ vd1(k,j)
   ud2(k+1,j+1)= ud2(k,j)+ vd2(k,j)
   ud3(k+1,j+1)= ud3(k,j)+ vd3(k,j)
   ud4(k+1,j+1)= ud4(k,j)+ vd4(k,j)
end do
end do
write(1,*) ud1
write(1,*) ud2
write(1,*) ud3
write(1,*) ud4
write(1,*) vd1
write(1,*) vd2
write(1,*) vd3
write(1,*) vd4
 end subroutine
end
use m1
call s1
end
