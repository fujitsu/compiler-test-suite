       PROGRAM MAIN
       REAL C10(50),D10(50)
       REAL A11(50),A12(50)

       A12(50)=-50
       DO 201 I = 1 , 50
         C10( I) = A12(50) * I
         A12( I) = - I
         D10( I) = A12(50) + C10( I)
201    CONTINUE

       DO 202 I = 1 , 50
         A11( I) = A12(50) + I + D10(I)
         A12( I) = C10( I) + D10(I)
202    CONTINUE
       WRITE(6,101)
       WRITE(6,199) (A11(I),I=1,50)
       WRITE(6,102)
       WRITE(6,199) (A12(I),I=1,50)
       STOP
101    FORMAT(1H0,2X,'*=*=*=*=* A11(I),I=1,50 *=*=*=*=*')
102    FORMAT(1H0,2X,'*=*=*=*=* A11(I),I=1,50 *=*=*=*=*')
199    FORMAT(1H ,2X,5(E15.7))
       END
