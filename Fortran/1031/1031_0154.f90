REAL(8),pointer::A(:,:),B(:,:),C(:,:),D(:,:)
REAL(8),target::At(4,4),Bt(4,4),Ct(4,4),Dt(4,4)
At=reshape((/(k,k=1,16)/),(/4,4/))
Bt=reshape((/(k,k=11,26)/),(/4,4/))
Ct=reshape((/(k,k=21,36)/),(/4,4/))
Dt=reshape((/(k,k=31,46)/),(/4,4/))
A=>At(1:4:2,1:4:2)
B=>Bt(1:4:2,1:4:2)
C=>Ct(1:4:2,1:4:2)
D=>Dt(1:4:2,1:4:2)
Dt(:2,:2)=A+MATMUL(Bt(:2,:2),Ct(:2,:2))
if (any(abs((/Dt/)-(/&
562,607,33,34,674,727,37,38,39,40,41,42,43,44,45,46&
/))>1.0E-13_8))then
  PRINT *,D
  print *,'Error'
else
endif
print *,'pass'
END
