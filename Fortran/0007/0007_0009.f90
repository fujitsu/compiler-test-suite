module m0
  integer:: NUMIA_I=400, NUMFSL=100
end
module m1
 use m0,only:NUMFSL,NUMIA_I
 implicit none
contains
 subroutine s0
 end subroutine
 subroutine s1
  real(kind=8),dimension( :, :      ) :: u1,u2
  real(kind=8),dimension( :, :      ) :: u4
  real(kind=8),dimension( :, :    ) :: u3
 integer::k,j
allocatable:: u1,u2,u3,u4
allocate(u1(400,100),u2(400,100),u3(400,100),u4(400,100))
u1=0
u2=0
u3=0
u4=0
do k=1,NUMIA_I
do j=1,NUMFSL
   u1(k,j) = 1
   u2(k,j) = 2
   u3(k,j) = 3
   u4(k,j) = 4
end do
end do
if (any(u1/=1)) print *,101
if (any(u2/=2)) print *,102
if (any(u3/=3)) print *,103
if (any(u4/=4)) print *,104
 end subroutine
end
use m1
call s1
print *,'pass' 
end
