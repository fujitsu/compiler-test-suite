          REAL A(10),B(10),C(10),D(10)
          DATA A,B,C/10*2.0,10*1.0,10*3.0/
          DATA D/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
          REAL X(10)
          DATA X/10*7.0/
          DO 10 J= 1,10
          DO 10 I = 1 , 10
            IF(D(I) .LE. 4.0 ) S    = A(I) + B(I)
            IF(D(I) .LT. 5.0 ) S    = C(I) + 10.0
            IF(D(I) .LE. 4.0 ) X(I) = A(I) + B(I)
 10       CONTINUE
            PRINT *,X
            END
