          REAL A(150),B(150)
          DATA A/150*1.0/
          DATA B/150*1.123/
          A(51) = 3.333
          A(53) = 4.444
          DO 111 I= 1 , 50
              A(I) = A(I) + A(51)
              A(52)=A(53) + B(I)
 111      CONTINUE
          PRINT *,A
          END
