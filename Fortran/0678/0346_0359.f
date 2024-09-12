          REAL   A(10),D(10)
          REAL*8 C(10)
          DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA C/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
          DO 10 I = 1 , 10
            A(I) = C(I) + 2.0D0
            D(I) = A(I) * 2.0
 10       CONTINUE
            PRINT *,A,D
            END
