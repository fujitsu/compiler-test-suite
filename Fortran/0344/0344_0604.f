      REAL*4 A(10)/10*1./
      DATA N/5/K/1/
      DO 10 I=1,10
        K=K+1
        A(N)=K
 10   CONTINUE
      S=A(N)
      WRITE(6,1000) A,S
      WRITE(6,1001) N
 1000 FORMAT(F10.5)
 1001 FORMAT(I10)
      STOP
      END
