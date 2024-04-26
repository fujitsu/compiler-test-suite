      INTEGER   CHK,C,D
      REAL      A,B,K,WORK(200)
      DIMENSION A(10,10),B(10,10),C(10,10),D(10,10),K(10,10)
      POINTER   (PA,A),(PB,B),(PC,C),(PK,K),(PD,D)
      DO 999 I=1,200
 999     WORK(201-I)=I
      PA=LOC(WORK(1))
      PB=LOC(WORK(2))
      PC=LOC(WORK(3))
      PK=LOC(WORK(6))
      PD=LOC(WORK(8))
      DO 1 I=1,10
       DO 1 J=1,10
         A(J,I)=10*I+K(I,J)
         B(I,J)=K(I,J)
    1 CONTINUE
      DO 2 I=1,10
       DO 2 J=1,10
        C(I,J)=SIN((A(J,I)+B(I,J))/1000)
        D(I,J)=(SIN(A(J,I)/1000)*COS(B(I,J)/1000)+SIN(B(I,J)/1000))
    2 CONTINUE

      CHK=0
      DO 3 I=1,10
       DO 3 J=1,10
         IF(C(I,J).NE.D(I,J)) THEN
            WRITE(6,100)
  100       FORMAT(1X,'** TEST IS NG **')
            CHK=CHK+1
         ENDIF
    3 CONTINUE
       IF (CHK.EQ.0) THEN
        WRITE(6,*) '*** TEST IS OK ***'
       ENDIF
      STOP
      END
