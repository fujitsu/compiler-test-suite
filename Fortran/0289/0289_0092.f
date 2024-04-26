      PROGRAM    MAIN
      P1=0
      P2=0
      CALL       REKAEB(P1,P2,10)
      IF (P1.NE.3.0) THEN
      WRITE(6,*) P1,'*** NG-1 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-1 ***'
      IF (P2.NE.4099.0) THEN
      WRITE(6,*) P2,'*** NG-2 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-2 ***'
      P1=0
      P2=0
      CALL       REKAEA(P1,10,1)
      IF (P1.NE.25.0) THEN
      WRITE(6,*) P1,'*** NG-3 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-3 ***'
      P1=0
      P2=0
      CALL       REKAE9(P1,10,1)
      IF (P1.NE.21.0) THEN
      WRITE(6,*) P1,'*** NG-4 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-4 ***'
      STOP
      END
      SUBROUTINE REKAEB(E,F,K)
      DIMENSION A(12),B(12),C(12),D(12)
      REAL WORK(48)
      POINTER (PA,A),(PB,B),(PC,C)
      PA=LOC(WORK(1))
      PB=LOC(WORK(13))
      PC=LOC(WORK(25))
      PD=LOC(WORK(37))
      DO 1 I=1,12
      A(I)=1.0
      B(I)=2.0
      C(I)=3.0
      D(I)=4.0
    1 CONTINUE
      DO 20 J=1,10
        DO 10 I1=1,10
          A(J)=A(J)*B(I1)
   10 CONTINUE
        DO 11 I2=1,10
          A(K)=A(K)*B(I2)
   11 CONTINUE
        DO 12 I3=1,10
          A(J)=A(J)*B(I3)
          C(J)=C(J)*B(I3)
          D(J)=D(J)*B(I3)
   12 CONTINUE
   20 CONTINUE
      E=WORK(I-1)+B(J-1)
      F=C(I-1)+D(J-1)
      RETURN
      END
      SUBROUTINE REKAEA(B,K,L)
      REAL*4    B,X
      INTEGER   K,L
      DIMENSION A(12)
      X=12.0
      DO 20 J=1,K,L
        A(J)=1
      DO 10 I=1,K,L
        A(J)=X+1
   10 CONTINUE
   20 CONTINUE
      B=A(I-1)+X
      RETURN
      END
      SUBROUTINE REKAE9(B,K,L)
      REAL*4    B,X
      INTEGER   K,L
      DIMENSION A(12)
      DO 1 INIT=1,12
      A(INIT)=1.0
    1 CONTINUE
      X=12.0
      DO 20 J=1,K,L
        A(J)=1
      DO 10 I=1,K,L
        X=A(J)
        A(J)=X+1
   10 CONTINUE
   20 CONTINUE
      B=A(I-1)+X
      RETURN
      END
