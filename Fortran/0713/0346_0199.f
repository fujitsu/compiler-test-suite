          REAL A(150),B(150),C(150),D(150)
          REAL X(50),Y(50)
          DATA B/150*1.123/
          DATA D/150*2.246/
          DATA N/6/
          A=0
          C=0
          A(51) = 3.303
          B(51) = 6.336
          C(51) = 5.333
          DO 111 I= 1 , 50
              IF(N .GT. 5 )  THEN
                   X(I) = D(I) + B(51)
                   Y(I) = D(I) + A(51)
                   B(I) = A(I) + C(51)
                   C(I) = X(I) + Y(I)
              ENDIF
 111      CONTINUE
          PRINT *,B,C,X,Y
          END
