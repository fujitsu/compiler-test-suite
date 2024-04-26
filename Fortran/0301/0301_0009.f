      REAL*4 A(100),B(100),C(100),D(100),E(100),F(100),G(100)
      DATA C/100*3/
      DATA E/100*2/
      DO I=1,100
        G(I)=C(I)**E(I)
        D(I)=SIN(E(I))
        E(I)=COS(E(I))
      ENDDO
         print *,G
      WRITE(6,*)"D(1)=",D(1)
      WRITE(6,*)"G(1)=",G(1)
      END
