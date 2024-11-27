       DIMENSION NM(1280)
       DO 10 I = 1 , 1280
            NM(I) = I
 10    CONTINUE
       WRITE(6,*) NM(1),NM(10),NM(100),NM(1000),NM(1280)
       STOP
       END
