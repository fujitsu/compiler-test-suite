REAL*8 A(100),B(100),C(100),D(100),E(100),R1(100),R2(100)
DATA D/100*1/
DATA E/100*2/
DO I=1,100
  R1(I) = SIN(D(I))
  R2(I) = COS(D(I))
  A(I)=R1(I)+R2(I)
  B(I)=D(I)**E(I)+A(I)**D(I)
  C(I)=R1(I)+R2(I)
ENDDO
WRITE(6,*)"A(1)=",A(1)
WRITE(6,*)"B(1)=",B(1)
WRITE(6,*)"C(1)=",C(1)
END

