          REAL A(150),B(150)
          DATA A/150*0.000/
          DATA B/150*1.123/
          DATA N/111/
          A(51) = 3.333
          A(53) = 4.444
          DO 111 I= 1 , 50
              IF( N .GT. 110 ) THEN
                   A(I) = A(I)  + A(51)
                   A(52)= A(53) + B(I)
               ELSE
                   A(I) = A(I)  + B(51)
                   B(52)= B(53) + A(I)
               ENDIF
 111      CONTINUE
          PRINT *,A ,B
          END
