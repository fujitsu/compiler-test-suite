      INTEGER*4 IA(10),IB(10)
      DATA IB/10*2/,ia/10*0/
      DO 10 I=1,10
        IA(I)=-ISHFT(-1,IA(I)-IB(I))
   10 CONTINUE
      WRITE(6,*) IA
      END
