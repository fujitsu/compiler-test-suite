      REAL A(10,10)/100*1./
      DO 10 I=1,10
       K=11
       N=1
       DO 20 J=1,10
        K=K-1
        IF(N.GT.5 .OR. K.GT.10) GOTO 10
        A(N,J)=J
   20   N=N+1
   10 CONTINUE
      WRITE(6,1000) A
      WRITE(6,1001) N
      WRITE(6,1001) K
 1000 FORMAT(10(1X,F7.3))
 1001 FORMAT(I4)
      STOP
      END
