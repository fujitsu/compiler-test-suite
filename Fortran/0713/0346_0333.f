      PROGRAM MAIN
      REAL     A(10),B(10),C(10)
      REAL     X(10)
      DATA     A,B,C/10*1.0,10*0.5,10*3.0/

      DO 10 I = 1 , 10
         C(I) = C(I) + I
         IF( I .GT. 5 ) THEN
            X(I) = A(I) + B(I)
         ELSE
            X(I) = A(I) - B(I)
        ENDIF
   10 CONTINUE
      PRINT  *,X
      STOP
      END
