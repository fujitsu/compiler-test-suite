      REAL A(10),B(10),C(10)
      DATA A,B,C/10*1.,10*2.,10*3./

      DO 9 I=1,10
9       A(I)=I

      DO 10 I=2,10,1
        B(I)=SIN(A(I)+C(I))
        IF (B(I).NE.0) THEN
          C(I)=C(I)-1.
        ELSE
          C(I)=C(I)+2.
        ENDIF
   10 CONTINUE
      WRITE(6,1) A,B,C
 1    FORMAT(5F11.3)
      STOP
      END
