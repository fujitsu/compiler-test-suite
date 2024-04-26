       DIMENSION A(513),B(1025),C(2049)
       DO 10 I= 1,513
          A(I) = I
 10    CONTINUE
       DO 20 I= 1,1025
          B(I) = I
 20    CONTINUE
       DO 30 I= 1,2049
          C(I) = I
 30    CONTINUE
       WRITE(6,*) A(513),B(1025),C(2049)
       STOP
       END
