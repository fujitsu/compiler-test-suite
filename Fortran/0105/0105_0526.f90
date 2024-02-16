complex(8)::A(2,2,2),B(2,2),C(2,2),D(2,2),E(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/,E/11,13,15,17/
DATA A(2,:,:)/22,24,26,28/
D=MATMUL(B,transpose(A(2,:,:)))+MATMUL(B,transpose(A(2,:,:)))+MATMUL(B,C)
if (any(abs((/D/)-(/&
1244,1448,1436,1672&
/))>1.0E-10_8))then
  PRINT *,int(D)
  print *,'Error'
else
endif
print *,'pass'
contains
function m(a1,a2) result(r)
complex(8)::a1(:,:),a2(:,:),r(2,2)
r=MATMUL(a1,a2)
end function
END

