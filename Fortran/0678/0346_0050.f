       DIMENSION A(600),B(1000),C(1024),D(2048),E(4096)
       DO 10 I= 1,600
          A(I) = I
 10    CONTINUE
       DO 20 I= 1,1000
          B(I) = I
 20    CONTINUE
       DO 30 I= 1,1024
          C(I) = I
 30    CONTINUE
       DO 40 I= 1,2048
          D(I) = I
 40    CONTINUE
       DO 50 I= 1,4096
          E(I) = I
 50    CONTINUE
       WRITE(6,*) A(100),B(100),C(100),D(100),E(100)
       STOP
       END
