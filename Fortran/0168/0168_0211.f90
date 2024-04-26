module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*,*)::ca2=reshape( ca , [2,2] )
complex(8),parameter,dimension(*,*)::ca3=ca2
real   (8),parameter,dimension(*)::ra=ca%im
real   (8),parameter,dimension(*,*)::ra2=ca2%im
contains
subroutine s01(r1,r2)
real(8)   :: r1(2,2), r2(2,2) , z1(2,2) , z2(2,2)
z1=matmul(r1,r2)
z2=matmul(ca2%im,ca3%im)
if (any(z1/=z2)) then
  print *,101,z1
  print *,102,z2
endif
end subroutine
function   i02(r1,r2)
real(8)   :: r1(2,2), r2(2,2) , z1(2,2) , z2(2,2)
z1=matmul(r1,r2)
z2=matmul(ca2%im,ca3%im)
if (any(z1/=z2)) then
  print *,111,z1
  print *,112,z2
endif
i02=1
end function 
end
use m1
call   s01(ca2%im,ca3%im)
if (i02(ca2%im,ca3%im)+i02(ca2%im,ca3%im)+i02(ca2%im,ca3%im)+i02(ca2%im,ca3%im)/=4) print *,201
print *,'pass'
end
