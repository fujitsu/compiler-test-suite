          REAL A(10,2),B(10,2),C(10,2),D(10)
          DATA A,B,C/20*2.0,20*1.0,20*3.0/
          DATA D/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
          REAL X(10,2)
          DATA X/20*7.0/
          REAL S(10)

          N = 5
          DO 10 J= 1,2
          DO 10 I = 1 , 10
            IF(D(N) .LE. 4.0 ) S(I) = A(I,J) + B(I,J)
            IF(D(N) .LT. 5.0 ) S(I) = C(I,J) + 10.0
            IF(D(N) .LE. 4.0 ) X(I,J) = A(I,J) + B(I,J)
 10       CONTINUE
            PRINT *,X
            END
