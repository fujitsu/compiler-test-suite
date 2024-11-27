       DIMENSION NM(10000)
       data nm/10000*0/
       COMMON /BLK1/N

       NM(10000) = 0

       DO 20 J = 1 , 10000
       DO 10 I = 1 , N
            NM(I) = I
 10    CONTINUE
       JJ = NM(J) + J
 20    CONTINUE
       WRITE(6,*) NM(1),NM(10),NM(100),JJ
       STOP
       END
       BLOCK DATA
       COMMON /BLK1/N
       DATA N/100/
       END
