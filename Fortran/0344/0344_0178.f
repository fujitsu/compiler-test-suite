      REAL A(10),B(10),C(10)
      LOGICAL * 4 L(10)
      DATA A,B,C/10*1.,10*2.,10*3./
      DATA L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     +       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA N,M,NN/1,10,1/
      DO 10 I=N,M,NN
        B(I)=B(I)+A(I)*C(I)/2
        IF (L(I)) THEN
          B(I)=B(I)-A(I)
        ELSE
          B(I)=B(I)+A(I)
        ENDIF
10    CONTINUE

      DO 20 J=N,M
        DO 21 I=NN,10
          A(I)=B(I)+SIN(C(I))
21      CONTINUE
20    CONTINUE
      WRITE(6,1) A,B
 1    FORMAT(5F10.5)
      STOP
      END
