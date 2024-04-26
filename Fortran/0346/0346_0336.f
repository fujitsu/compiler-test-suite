      REAL     A(11),B(11),C(11)
      REAL     X(10)/10*1.0/
      DATA     A,B,C/11*1.0,11*0.5,11*3.0/

      DO 10 I = 1 , 10
         C(I) = C(I) + I
         IF( I .GT. 5 ) THEN
            X(I) = A(I+1) + B(I+1)
         ELSE
            X(I) = A(I+1) - B(I+1)
        ENDIF
   10 CONTINUE
      PRINT  *,X
      STOP
      END
