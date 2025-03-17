       DIMENSION NM(10000)
       DO 10 I = 1 , 512
            NM(I) = I
 10    CONTINUE
       WRITE(6,*) NM(1),NM(10),NM(100),NM(500),NM(512)
       STOP
       END
