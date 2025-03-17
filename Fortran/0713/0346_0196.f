          REAL A(150),B(150),C(150),D(150)
          REAL X(50),Y(50),Z(50)
          DATA A/150*0/
          DATA B/150*1.123/
          DATA C/150*0/
          DATA D/150*2.246/
          A(51) = 3.303
          B(51) = 6.336
          C(51) = 5.333
          D(51) = 2.479
          DO 111 I= 1 , 50
              X(I) = D(I) + B(51)
              Y(I) = D(I) + A(51)
              B(I) = A(I) + C(51)
              C(I) = X(I) + Y(I)
              Z(I) = A(I) + D(51)
 111      CONTINUE
          PRINT *,Z,B,C
          END
