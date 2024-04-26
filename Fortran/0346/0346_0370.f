          COMPLEX   A(10),D(10)
          COMPLEX*16 C(10)
          DATA A/10*(2.0,1.0)/
          DATA C/10*(1.0D0,2.0D0)/
          DO 10 I = 1 , 10
            A(I) = C(I) + (2.0D0,2.0D0)
            D(I) = A(I) * (2.0,2.0)
 10       CONTINUE
            PRINT *,A,D
            END
