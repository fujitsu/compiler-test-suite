module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*,*)::ca2=reshape( ca , [2,2] )
complex(8),parameter,dimension(*,*)::ca3=ca2
real   (8),parameter,dimension(*)::ra=ca%im
real   (8),parameter,dimension(*,*)::ra2=ca2%im
contains
subroutine s01(r1,r2,k)
real(8)   :: r1(2,2), r2(2,2) , z1(2,2) , z2(2,2) , z3(2,2) , z4(2,2), z5(2,2), z6(2,2), z7(2,2) , z8(2,2)
complex(8):: ya(2,2)
real(8)   :: xa(2,2)
xa=ca2%im
ya=ca2
if (any(r1/=ca2%im)) print *,901
if (any(r2/=ca3%im)) print *,902
z1=xa+matmul(r1,r2)
z2=xa(:,:)+matmul(r1,r2)
z3=ya%im+matmul(r1,r2)
z4=ya(:,:)%im+matmul(r1,r2)
z5=ya%im+matmul(r1,r2)
z6=ya(:,:)%im+matmul(r1,r2)
z7=ca2     %im+matmul(r1,r2)
z8=ca2(:,:)%im+matmul(r1,r2)
if (any(z1/=z2)) then
  print *,101,z1
  print *,102,z2
endif
if (any(z1/=z3)) then
  print *,111,z1
  print *,112,z3
endif
if (any(z1/=z4)) then
  print *,121,z1
  print *,122,z4
endif
if (any(z1/=z5)) then
  print *,131,z1
  print *,132,z5
endif
if (any(z1/=z6)) then
  print *,141,z1
  print *,142,z6
endif
if (any(z1/=z7)) then
  print *,151,z1
  print *,152,z7
endif
if (any(z1/=z8)) then
  print *,161,z1
  print *,162,z8
endif
end subroutine
end
use m1
call   s01(ca2%im,ca3%im,2)
print *,'pass'
end
