          REAL A(150),B(150),C(150),D(150),X(150),Y(150)
          DATA B/150*1.111/
          DATA C/150*2.468/
          A(1) = 3.000
          C(1) = 4.000
          DO 111 I= 1 , 150
              B(1) = I * 2
              C(1) = I + 2.0
              A(I) = B(I) + C(I)
              X(I) = A(I) + B(I)
              D(I) = X(I) + A(1)
              C(1) = D(I) + B(I)
              Y(I) = A(I) + B(I) + D(I)
 111      CONTINUE
          PRINT *,Y
          END
