         REAL*4 A1(10),A2(10),A3(10)
         REAL*4 B1(10),B2(10),B3(10)
         REAL*8 X1(10),X2(10),S1,S2
         DATA X1/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
         DATA X2/1.1D0,2.2D0,3.3D0,4.4D0,5.5D0,6.6,7.7,8.8,9.9,10.1D0/
         S1 = 1.D0
         S2 = 2.D0
         DO 101 I = 1 , 10
           A1(I) = X1(I) + S1    + X2(I) + S2
           A2(I) = X1(I) + S1    + X2(I) - S2
           A3(I) = X1(I) - S1    + X2(I) - S2
           B1(I) = S1    + X1(I) + S2    + X2(I)
           B2(I) = S1    + X2(I) + S2    - X1(I)
           B3(I) = S1    - X2(I) + S2    - X1(I)
 101     CONTINUE
         PRINT *,A1,A2,A3
         PRINT *,B1,B2,B3
         END
