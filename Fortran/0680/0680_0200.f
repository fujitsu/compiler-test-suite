      INTEGER*2 IA(10),IB(10),IC(10)
      DATA IA/10*1/
      DATA IB/10*2/
      DO 10 I=1,10
        IC(I)=ISHFT(IA(I),IB(I))
   10 CONTINUE
      WRITE(6,*) IC
      END
