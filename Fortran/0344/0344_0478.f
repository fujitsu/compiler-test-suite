      REAL*4  A(20,20),B(20,20),D(20)
      DATA   A,B/400*1.,400*2./,N/1/,NN/15/
      DATA   D/20*4./
C
      DO 10 I=1,NN
        N=16
        DO 30 J=1,15
          N=N-1
          B(J,I) = A(J,N)+2.*D(J)
  30    CONTINUE
  10  CONTINUE
      WRITE(6,*) ' B= ',B
      STOP
      END
