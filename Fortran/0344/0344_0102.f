      REAL A(10,10)
      REAL B(10,10)
      DATA A/100*1./
      DATA B/100*4./
      INTEGER N/1/
      INTEGER M/1/
      DO 10 I=1,10
        DO 20 J=1,10
          A(N,M)=A(N,M)+B(I,J)
   20   CONTINUE
   10 CONTINUE
      WRITE(6,100) A(1,1),A(1,10),A(10,1),A(10,10)
  100 FORMAT (1H ,4F8.2)
      END
