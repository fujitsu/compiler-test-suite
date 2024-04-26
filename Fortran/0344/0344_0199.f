      REAL * 4 A(20),B(20),C(20),D(20),E(20)
      DATA A/10*2.,10*3./
      DATA B/10*2.,10*3./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,10*1./
      DATA D/10.,17.,2.,3.,10.,15.,1.,1.,19.,15.,
     +       10.,14.,2.,3.,10.,15.,1.,1.,19.,15./
      DATA E/10*1.,10*2./
C
      DO 10 K=1,20
        DO 10 I=1,INT(D(K))+1,INT(E(K))
          IF (K.LT.4 .OR. K.GT.15) GOTO 10
          A(I)=A(I)+B(I)*K
          B(I)=B(I)**INT(E(I))-K-C(I)
10    CONTINUE
C
      WRITE(6,*) A,B
      STOP
      END
