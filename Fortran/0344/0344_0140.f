      REAL A(10),B(10),C(10)
      LOGICAL L(10)
      DATA A,B,C/10*0.,10*1.,10*2./
      DATA L/3*.TRUE.,3*.FALSE.,4*.TRUE./
      DO 10 I=1,10
        IF (L(I)) THEN
          A(I)=C(I)*2.
          B(I)=A(I)*(C(I)+B(I))
        ENDIF
   10 CONTINUE
      WRITE(6,1) B
 1    FORMAT(5F10.5)
      STOP
      END
