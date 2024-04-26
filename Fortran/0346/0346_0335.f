      REAL     A(10)
      REAL     X(10)
      DATA     A/10*1.0/
      X(10) =  1.0

      DO 10 I = 1 , 9
         IF( I .GT. 5 ) THEN
            X(I) = A(I+1) + 1.0
         ELSE
            X(I) = A(I+1) - 2.0
        ENDIF
   10 CONTINUE
      PRINT  *,X
      STOP
      END
