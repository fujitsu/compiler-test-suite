      REAL*4 A(10),B(10)
      EQUIVALENCE (A(5),C)
      DATA A/10*1/

      C=0.
      DO 10 I=1,10
        A(5)=I
        B(I)=I*10.
 10   CONTINUE
      IF(B(1).LT.0) THEN
       WRITE(6,1000) C
      ENDIF
      WRITE(6,1000) B
 1000 FORMAT(F10.5)
      STOP
      END
