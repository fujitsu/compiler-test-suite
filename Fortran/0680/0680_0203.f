      INTEGER*4 IA(10),IB(10),IC(10)
      DATA IA/10*1/
      DATA IB/10*2/
      IC=0
      DO 30 K=1,10
        DO 10 I=1,10
          IC(K)=ISHFT(IA(I),IB(I))
   10   CONTINUE
        DO 20 J=1,10
          IC(K)=IC(J)+IA(J)
   20   CONTINUE
   30 CONTINUE
      WRITE(6,*) IC
      END
