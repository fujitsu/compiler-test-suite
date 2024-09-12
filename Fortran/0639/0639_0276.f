         REAL A(1026),B(1026),C(1026)
         DATA A/1026*1.0/
         DATA B/1026*1.0/
         DATA C/1026*1.0/
         C(1025)=100.0D0
         A(1025)=10.0D0
         B(1025)=1.0D0

         XMAX = 0.0
         XVAL = A(1)
         RVAL = B(1)
         IVAL = 1
         DO 11 I = 1 , 1025
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
