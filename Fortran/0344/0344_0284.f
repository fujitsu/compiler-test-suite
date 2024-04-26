      PROGRAM MAIN
      COMPLEX*8 C801(500),C802(500),C803(500)
      COMPLEX*16 C1601(500),C1602(500),C1603(500)
      EQUIVALENCE (C801(1),C802(1))
      COMMON /COM1/C1602,C1603
      DO 10 I=1,500
        IF (I.LE.1000) THEN
          C801(I) = (1.,0.)
          C802(I) = (2.,0.)
          C803(I) = I + 1
          C1601(I) = I * 2
          C1602(I) = I / 2
          C1603(I) = C1601(I) * C1602(I)
        ENDIF
   10 CONTINUE
C
      DO 20 I=1,500,3
        IF (MOD(I,2).EQ.0) THEN
          C801(I) = C802(I) ** CSIN(C803(I))
          C1601(I) = C1602(I) * C1603(I) / C801(I) + C803(I)
        ENDIF
   20 CONTINUE
C
      
      WRITE(6,1) (C1601(I),I=1,500,25)
    1 FORMAT(2(1X,'(',E15.6,',',E15.6,')',1X))
      STOP
      END
