REAL(8)::A(2,2),B(2,2),C(2,2),D(2,2),E(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/,E/11,13,15,17/
DATA A(:,:)/22,24,26,28/
D=E
D=MATMUL(B,A)*2.0_8+C
if (any(abs((/D/)-(/&
1114,1300,1310,1528&
/))>1.0E-10_8))then
  PRINT *,int(D)
  print *,'Error'
else
endif
print *,'pass'
contains 
function m(a1,a2) result(r)
REAL(8)::a1(:,:),a2(:,:),r(2,2)
r=MATMUL(a1,a2)
end function
END
