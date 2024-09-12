       DIMENSION NM(10000)
       COMMON /BLK1/ N

       DO 10 I = 1 , N
            NM(I) = I
 10    CONTINUE
       WRITE(6,*) NM(1),NM(10),NM(100),NM(1000),NM(10000)
       STOP
       END
       BLOCK DATA
       COMMON /BLK1/ N
       DATA N/10000/
       END
