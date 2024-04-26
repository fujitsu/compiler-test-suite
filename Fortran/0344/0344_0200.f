      REAL * 4 A(20),B(20),C(20)
      LOGICAL * 4 L(20)
C
      DATA L/5*.TRUE.,5*.FALSE.,5*.TRUE.,5*.FALSE./
      DATA A/1.,2.,3.,0.,5.,6.,7.,8.,9.,10.,
     +       -1.,12.,13.,0.,15.,-6.,17.,0.,19.,-0./
      DATA B/5*9.,5*2.,5*3.,5*40./
C
      DO 10 K=1,20
        IF (L(K)) GOTO 11
          C(K)=K
11      DO 20 I=1,K
          IF (A(I).EQ.0.) GOTO 20
          A(I)=A(I)*B(I)
          IF (A(I).GT.10) GOTO 21
          A(I)=A(I)-1
21        IF (A(I).LT.B(I)) GOTO 22
          A(I)=B(I)
22        A(I)=A(I)*I+I
20        A(I)=A(I)+A(I)-B(I)
10    CONTINUE
C
      WRITE(6,*) A
      STOP
      END
