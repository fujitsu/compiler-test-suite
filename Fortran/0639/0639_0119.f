         REAL A(100),B(100),C(100)

         DO 10 I = 1 , 100
           A(I) = I + 1
           B(I) = I + 10
           C(I) = B(I) / A(I) - 1.
           IF( I .GE.80 ) THEN
             C(I) = B(I) / A(I) + 1.
           ENDIF
 10      CONTINUE

         XMIN = 0.5
         XVAL = A(1)
         RVAL = B(1)
         IVAL = 1
         DO 11 I = 1 , 100
           IF( C(I) .LT. XMIN ) THEN
               XMIN = C(I)
               IVAL = I
               RVAL = B(I)
               XVAL = A(I)
           ENDIF
 11      CONTINUE
         PRINT *,IVAL
         WRITE(6,111) XMIN,RVAL,XVAL
 111     FORMAT(1H ,3(E12.5,2X) )
         END
