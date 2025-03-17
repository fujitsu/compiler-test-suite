REAL(KIND=8)::A(2,4,3),B(4,3),C(4)
A=reshape((/(i,i=1,27)/),(/2,4,3/))
B=reshape((/(i,i=11,22)/),(/4,3/))
C=MATMUL(B,A(2,3,1:3))
if (any(abs((/C/)-(/&
694,736,778,820&
/))>0.001))then
print *,int(C)
print *,'error'
endif
print *,'pass'
end
