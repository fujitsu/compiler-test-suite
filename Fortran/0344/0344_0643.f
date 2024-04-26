      INTEGER A(10,10)/100*0/,B(10,10)/100*0/
      INTEGER C(10)/10*0/,D(10)/10*0/
      INTEGER E(10)/10*0/,F(10)/10*0/
      INTEGER G(10)/10*0/
      M=1
      DO 10 I=1,10
       A(I,M)=I
       N=1
        DO 20 J=1,10
         B(I,J)=A(I,J)
          DO 30 K=1,N
           A(K,N)=K
   30     CONTINUE
         N=N+1
   20   CONTINUE
       M=M+1
   10 CONTINUE
      IF(M.GT.1000) THEN
       WRITE(6,*) A,B
      ELSE
       WRITE(6,*) M,N
      ENDIF
C
      N=1
      DO 50 I=1,10
       C(I)=N
       DO 60 J=1,10
        N=N+1
   60  CONTINUE
   50  D(I)=C(I)*I
      WRITE(6,*) C,D,N
C
      N=1
      DO 70 I=1,10
       DO 80 J=1,10
        N=N+1
   80  CONTINUE
   70  E(I)=N
      WRITE(6,*) E,N
C
      N=1
      DO 90 I=1,10
       DO 95 J=1,10
        N=N+1
   95  CONTINUE
       F(I)=N
   90  G(I)=F(I)
      WRITE(6,*) F,G,N
      STOP
      END
