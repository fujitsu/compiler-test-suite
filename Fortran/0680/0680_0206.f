      INTEGER*4 IB(10)
      REAL*8    IA(10)
      DATA IB/10*2/
      DO 10 I=1,10
        IA(I)=ISHFT(1,IB(I))
   10 CONTINUE
      WRITE(6,*) IA
      END
