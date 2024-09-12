      DIMENSION   A12(50,10),B12(50,10)
      DIMENSION  A(101),B(101),C(101),D(101),E(101),IA(101)
      DIMENSION  AA(101,101),BB(101,101),CC(101,101),DD(101,101)
      DIMENSION  EE(101,101)

      EPS=1.0E-7
      N=100
      ICL=1
      ICS=1
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

      DO 390 IC=1,ICS
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
  390   CONTINUE
      ILOOP=(N-1)*(N-1)

      DO 391 J=2,N
      DO 391 I=2,N
  391   AA(I,J)=1.0

      DO 650 IC=1,ICS
        DO 640 J=1,N
          DO 630 I=1,N
            IF(BB(I,J).LT.0.0) GOTO 620
            AA(I,J)=AA(I,J)+BB(I,J)
            GOTO 630
  620       AA(I,J)=AA(I,J)-BB(I,J)
  630     CONTINUE
  640   CONTINUE
  650 CONTINUE
      NN=N*N

      DO 700 IC=1,ICS/10
        DO 710 I=1,N
          DO 710 J=1,N
           AA(I,J)=0.
            DO 710 L=1,N
  710        AA(I,J)=AA(I,J)+BB(I,L)*CC(L,J)
  700   CONTINUE
      ILOOP=N*N*N

      WRITE(6,*) AA ,A , ILOOP
      STOP
      END
