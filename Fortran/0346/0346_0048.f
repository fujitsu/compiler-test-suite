       DIMENSION A(512),B(512),C(512)
       DO 11 I = 1 , 512
       B(I) = I
       C(I) = I + 1
 11    CONTINUE
       DO 10 I = 1 , 512
         A(I) = C(I) + B(I) + I
 10    CONTINUE
       WRITE(6,*) A
       STOP
       END
