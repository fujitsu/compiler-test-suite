      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA B,C/10*2.,10*3./
      DATA N,M/1,10/
      DO 10 I=N,M
        B(I)=A(I)+C(I)
        IF (B(I).GT.0) GOTO 10
        A(I)=A(I)+B(I)*C(I)/B(I)
        IF (A(I).LT.B(I)) THEN
          A(I)=A(I)+B(I)
        ENDIF
   10 CONTINUE
      WRITE(6,1) A,B
 1    FORMAT(5F10.5)
      STOP
      END
