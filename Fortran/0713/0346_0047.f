       DIMENSION A(128),B(128),C(128)
       DO 11 I = 1 , 128
       B(I) = I
       C(I) = I + 1
 11    CONTINUE
       DO 10 I = 1 , 128
         A(I) = B(I) + C(I)
 10    CONTINUE
       WRITE(6,*) A
       STOP
       END
