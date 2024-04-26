      PROGRAM MAIN
      REAL     A(10)
      REAL     X(10)
      DATA     A/10*1.0/

      DO 10 I = 1 , 10
         IF( I .GT. 5 ) THEN
            X(I) = A(I) + 1.0
         ELSE
            X(I) = A(I) - 2.0
        ENDIF
   10 CONTINUE
      PRINT  *,X
      STOP
      END
