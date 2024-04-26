       DIMENSION A(2000),B(2000),C(2000),X(2000)
       DATA B,C/2000*1.0 , 2000*2.0/
       DO 10 J = 1 , 10
         DO 10 I = 1 , 2000
           A(I) = B(I) + C(I)
           X(I) = B(I) + A(I)
 10    CONTINUE
       MOD = 0
       DO 20 M = 1 , 2000
       ANS = X(M) - 2*B(M) - C(M)
       IF( ANS .GE. 1.0E-6 ) MOD = 1
 20    CONTINUE
       IF(MOD .EQ. 0) GO TO 11
       WRITE(6,102)
       STOP
11     WRITE(6,101)
101    FORMAT('   OK')
102    FORMAT('   NG')
       STOP
       END
