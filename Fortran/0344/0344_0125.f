      PROGRAM  MAIN
      COMPLEX*16 C16A1,C16B1(10),C16C1(10),C16D1
      DATA     C16A1/1/
      DATA     C16B1/2,4,1,2,3,4,1,2,3,4/
      DATA     C16C1/1,1,1,1,1,1,1,1,1,1/
      DATA     C16D1/100/

      DO 10 I=1,10
        C16A1 = C16D1
        C16C1(I) = C16B1(I) * CDSQRT(C16A1)
   10 CONTINUE
C
      WRITE(6,*) ' C16C1 '
      WRITE(6,110) C16C1
  110 FORMAT (1H ,'(',F7.3,',',F7.3,')')
C
      STOP
      END
