type xx
REAL(8)::A(2,2),B(2,2),C(2,2),D(2,2),E(2,2)
end type
type(xx)::x
DATA x%C/2,4,6,8/,x%B/10,12,14,16/,x%E/11,13,15,17/
DATA x%A(:,:)/22,24,26,28/
REAL(8)::A(2,2),B(2,2),C(2,2),D(2,2),E(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/,E/11,13,15,17/
DATA A(:,:)/22,24,26,28/
x%D=x%E
D=E
D=-MATMUL(x%C,A)+B-MATMUL(E,TRANSPOSE(A))-MATMUL(TRANSPOSE(E),C)+MATMUL(TRANSPOSE(A),E)-MATMUL(C,B)-D
if (any(abs((/D/)-(/&
-433,-593,-461,-661&
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
