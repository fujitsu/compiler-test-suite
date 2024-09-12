       DIMENSION A(2048),B(2048),C(2048),D(2048),E(2048),F(2048)
       DIMENSION ANS(2048)
       COMMON N

       DO 200 I = 1 , 2048
       B(I) = I
       C(I) = I
       E(I) = I
       F(I) = I
200    CONTINUE
       DO 100 I = 1 , 2048
           DO 10 J = 1 , 2048
               A(I) = B(I) + C(I)
 10    CONTINUE
           DO 20 K = 1 , 2048
               D(I) = E(I) + F(I)
 20    CONTINUE
           ANS(I) = A(I) + D(I)
100    CONTINUE
       WRITE(6,*) (ANS(M),A(M),D(M),M=1,2048,128)
       STOP
       END
