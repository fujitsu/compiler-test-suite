         REAL A(100),B(100),C(100)

         DO 10 I = 1 , 100
           A(I) = I + 1
           B(I) = I + 10
           C(I) = (B(I) + A(I)) / 2.0
 10      CONTINUE

         XMAX = 0.0
         XVAL = A(1)
         RVAL = B(1)
         IVAL = 1
         DO 11 I = 1 , 100
           IF( C(I) .GT. XMAX ) THEN
               XMAX = C(I)
               IVAL = I
               RVAL = B(I)
               XVAL = A(I)
           ENDIF
 11      CONTINUE
         PRINT *,IVAL
         WRITE(6,111) XMAX,RVAL,XVAL
 111     FORMAT(1H ,3(E12.5,2X) )
         END
