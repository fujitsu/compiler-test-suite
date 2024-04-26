      PROGRAM  MAIN
      COMPLEX*8 C8B1(10),C8D1
      COMPLEX*16 C16A1,C16C1(10)
      DATA     C16A1/1/
      DATA     C8B1/2,4,1,2,3,4,1,2,3,4/
      DATA     C16C1/1,1,1,1,1,1,1,1,1,1/
      DATA     C8D1/100/
      DO 10 I=1,10
        C16A1 = C8D1
        C16C1(I) = C8B1(I) ** CDCOS(C16A1)
   10 CONTINUE
C
      WRITE(6,*) ' C16C1 '
      WRITE(6,110) C16C1
  110 FORMAT (1H ,'(',F10.7,',',F7.3,')')
C
      STOP
      END
