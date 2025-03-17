REAL(8)::A(2,2),B(2,2),C(2,2),D(2,2),E(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/,E/11,13,15,17/
DATA A(:,:)/22,24,26,28/
D=E
D=MATMUL(A,A)+MATMUL(B,B)+B
if (any(abs((/D/)-(/&
1386,1524,1678,1848&
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
