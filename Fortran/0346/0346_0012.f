       DIMENSION A(2010),B(2010),C(2010)
       COMMON /BLK2/N

       DO 11 I = 1 , 1110
       B(I) = I
       C(I) = I + 1
 11    CONTINUE

       DO 10 I = 1 , 1110
         A(I) = B(I) + C(I)
 10    CONTINUE
       WRITE(6,*) (A(II),II=1,1110)
       STOP
       END
       BLOCK DATA
       COMMON /BLK2/N
       DATA N/2000/
       END
