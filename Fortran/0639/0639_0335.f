      DIMENSION   A12(50,10),B12(50,10)
      DIMENSION  A(101),B(101),C(111),D(101),E(101),IA(101)
      DIMENSION  AA(101,101),BB(101,101),CC(101,101),DD(101,101)
      DIMENSION  EE(101,101)

      EPS=1.0E-7
      N=100
      ICL=3000
      ICS=50
      X=1.01
      Y=1.02
      Z=1.03
      X1=1.001
      X2=1.002
      X3=1.003
      X4=1.004
      X5=1.005
      X6=1.006
      X7=1.007
      X8=1.008
      Y1=1.0001
      Y2=1.0002
      Y3=1.0003
      Y4=1.0004
      DO 118 J=1,111
	C(J) = 1.0
118   CONTINUE
      DO 1 J=1,10
        DO 1 I=1,50
           A12(I,J)=1.0
    1      B12(I,J)=1.0
      DO 2 J=1,101
        A(J)=1.0
        B(J)=1.0
        C(J)=1.0
        D(J)=1.0
        E(J)=1.0
        IA(J)=1
        DO 2 I=1,101
          AA(I,J)=1.0
          BB(I,J)=1.0
          CC(I,J)=1.0
          DD(I,J)=1.0
    2     EE(I,J)=1.0

        M=10
        DO 20 I=1,N
   20     A(I)=X+B(I)*(Y*C(I+1)+Z*C(I+M+1))

      WRITE(6,9001) (A(I),I=1,N,10)
 9001 FORMAT(' ',5E15.6)

        Q=0.0
        DO 40 I=1,N
   40     Q=Q+B(I)*C(I)

      WRITE(6,9002) Q
 9002 FORMAT(' ',E15.6)

        DO 80 I=1,N
   80     AA(1,I)=X1*AA(13,I)+X2*AA(12,I)+X3*AA(11,I)+
     .            X4*AA(10,I)+X5*AA( 9,I)+X6*AA( 8,I)+
     .            X7*AA( 7,I)+X8*(AA(5,I)+   AA( 6,I))+AA(3,I)

      WRITE(6,9003) (AA(1,I),I=1,N,10)
 9003 FORMAT(' ',5E15.6)
      DO 71 I=1,N
   71   AA(1,I)=1.0

        JK=1
        DO 120 I=1,N
          JK=JK+1
  120     A(JK)=A(JK)-X*B(I)-Y*C(I)

      WRITE(6,9004) (A(I),I=1,N,10)
 9004 FORMAT(' ',5E15.6)
      DO 111 I=2,N+1
  111   A(I)=1.0

        DO 180 I=1,N
          X=B(I)+C(I)
          Y=B(I)*C(I)
          Z=B(I)/C(I)
  180     A(I)=X*B(I+1)+Y*Z*C(I+2)

      WRITE(6,9005) (A(I),I=1,N,10)
 9005 FORMAT(' ',5E15.6)
      X=0.0
      Y=1.02
      Z=1.03

        DO 300 I=1,N
          I1=AA(1,I)
          J1=AA(2,I)
          AA(3,I)=AA(3,I)+BB(I1,J1)
  300     AA(4,I)=AA(4,I)+CC(I1,J1)

      WRITE(6,9006) (AA(3,I),AA(4,I),I=1,N,10)
 9006 FORMAT(' ',5E15.6)

        DO 380 I=2,N
          DO 380 J=2,N
            X1=Y1*BB(J,I)
            X2=Y2*BB(J-1,I)
            X3=Y3*BB(J,I)
            X4=Y4*BB(J+1,I)
            AA(J,I)=((X1-X3)+(X2-X4))/(CC(J,I)*Y)
  380       IF( ABS(AA(J,I)).LT.EPS ) AA(J,I)=0.0

      WRITE(6,9007) ((AA(J,I),J=2,N,20),I=2,N,20)
 9007 FORMAT(' ',5E15.6)

        M=N/2
        DO 400 J=2,N
          DO 400 I=2,N
            IF( J.GT.2 ) GOTO 420
              X=BB(I-1,J)*CC(I-1,J)
              GOTO 400
  420       IF( J.EQ.M ) GOTO 410
              X=BB(I,J)*CC(I,J)
              GOTO 400
  410         X=BB(I+1,J)*CC(I+1,J)
  400       AA(I,J)=DD(I,J)*X+AA(I,J)

      WRITE(6,9008) ((AA(I,J),I=1,N,20),J=1,N,20)
 9008 FORMAT(' ',5E15.6)
      DO 391 J=2,N
      DO 391 I=2,N
  391   AA(I,J)=1.0

        DO 640 J=1,N
          DO 630 I=1,N
            IF(BB(I,J).LT.0.0) GOTO 620
            AA(I,J)=AA(I,J)+BB(I,J)
            GOTO 630
  620       AA(I,J)=AA(I,J)-BB(I,J)
  630     CONTINUE
  640   CONTINUE

      WRITE(6,9009) ((AA(I,J),I=1,N,20),J=1,N,20)
 9009 FORMAT(' ',5E15.6)

        DO 710 I=1,N
          DO 710 J=1,N
           AA(I,J)=0.
            DO 710 L=1,N
  710        AA(I,J)=AA(I,J)+BB(I,L)*CC(L,J)

      WRITE(6,9010) ((AA(I,J),I=1,N,20),J=1,N,20)
 9010 FORMAT(' ',5E15.6)
      STOP
      END
      SUBROUTINE  CLOCKS(IT)

      RETURN
      ENTRY  CLOCKI
      RETURN
      END
      SUBROUTINE  CLOCKE(ITNO,IT,IOPNO,INLOOP,IOUTLP)
      DATA IFL/6/,ISW/0/

      IF(ISW.NE.0)  GO TO  200
        WRITE(IFL,100)
  100     FORMAT(1H0,53H TEST-NO   PROC-TIME     OP-NO     LOOP-NO     M
     1FLOPS , 10X,34H( S-TIME    E-TIME    OUT-LOOPS )   /
     2    1H ,14X,6H(MSEC),46X,6H(MSEC),4X,6H(MSEC)        )
        ISW=1
  200 TTIME=FLOAT(ITE-IT)/FLOAT(IOUTLP)
      FLOPS=FLOAT(IOPNO*INLOOP*IOUTLP)/FLOAT((ITE-IT)*1000)
      WRITE(IFL,300) ITNO,TTIME,IOPNO,INLOOP,FLOPS,IT,ITE,IOUTLP

  300 FORMAT(1H ,3X,I3,4X,F10.3,1X,I9,1X,I11,4X,F10.3,10X,2(I8,1X),
     1       3X,I9)
      RETURN
      END
