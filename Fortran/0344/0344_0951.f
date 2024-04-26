      REAL*4 A(100),B(100)
      DATA A/100*1.0/,B/100*0.0/
      DO 10 I=1,100
         IF(I.GT.80) GO TO 20
         A(I) = (A(I) + I) / I
         IF(INT(A(I)+0.5).LT.20) THEN
            B(I) = A(I)
         ENDIF
   10 CONTINUE
   20 WRITE(6,*) B
      STOP
      END
