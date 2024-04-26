      REAL A(10),B(10),C(10),D(10)
      LOGICAL L(10)
      DATA A,B,C,D/10*1.,10*-2.,10*3.,10*4./
      DATA L/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./
      DATA N,M,NN/2,10,1/
      R=0
      DO 10 I=N,M,NN
        A(I)=B(I)+A(I)
        IF (L(I)) GOTO 11
        IF (A(I).GT.B(I)) THEN
          R = A(I)
        ENDIF
 11     D(I)=B(I)+D(I-1)+A(I)
   10 CONTINUE
      WRITE(6,1) C,D,R
 1    FORMAT(5F10.5)
      STOP
      END
