         REAL A(5000),B(5000),C(5000)
         REAL D(5000),E(5000),F(5000)

         DO 10 I = 1 , 5000
           A(I) = I + 1
           B(I) = I + 10
           C(I) = B(I) / A(I) - 1.
           IF( I .GE. 778) THEN
             C(I) = B(I) / A(I) + 1.
           ENDIF
 10      CONTINUE

         XMIN = 0.5
         XVAL = A(1)
         RVAL = B(1)
         IVAL = 1
         DO 11 I = 1 , 5000 , 2
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

         DO 20 I = 1 , 5000 , 2
           D(I) = I + 1
           E(I) = I + 10
           F(I) = (E(I) + D(I)) / 2.0
 20      CONTINUE

         YMAX = 0.0
         YVAL = D(1)
         RVAL = E(1)
         NVAL = 1
         DO 22 I = 1 , 5000 , 2
           IF( F(I) .GT. YMAX ) THEN
               YMAX = F(I)
               NVAL = I
               RVAL = E(I)
               XVAL = D(I)
           ENDIF
 22      CONTINUE
         PRINT *,NVAL
         WRITE(6,222) YMAX,RVAL,XVAL
 222     FORMAT(1H ,3(E12.5,2X) )
         END
