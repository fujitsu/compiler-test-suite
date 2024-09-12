      INTEGER*4 IA(10),IB(10),M(11)
      DATA M/11*2/

      DO 10 I=1,10
        IB(I)=M(I+1)
        IA(I)=ISHFT(1,IB(I))
   10 CONTINUE
      WRITE(6,*) IA
      END
