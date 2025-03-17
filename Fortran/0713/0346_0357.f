          REAL A(10,2),B(10,2),C(10,2),D(10)
          DATA A,B/20*2.0,20*1.0/
          DATA C/9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0,00.0
     E          ,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
          DATA D/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
          REAL X(10,2)
          DATA X/20*7.0/
          REAL S(10)
          DO 10 J= 1,2
          DO 10 I = 1 , 10
            IF(D(I) .LE. 4.0 ) S(I)   = A(I,J) + B(I,J)
            IF(D(I) .LT. 5.0 ) S(I)   = C(I,J) + FUNC(J)
            IF(D(I) .LE. 4.0 ) X(I,J) = A(I,J) + B(I,J)
 10       CONTINUE
          PRINT *,X
          END
          FUNCTION FUNC(N)
          COMMON /BLK1/ R(10,2)
          FUNC = R(N,N)
          RETURN
          END
          BLOCK DATA
          COMMON /BLK1/ R(10,2)
          DATA R/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,
     E           1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
          END
