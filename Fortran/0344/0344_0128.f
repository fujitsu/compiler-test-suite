      PROGRAM  MAIN
      COMPLEX*8 C8A1,C8B1(10),C8C1(10),C8D1
      DATA     C8A1/1/
      DATA     C8B1/2,4,1,2,3,4,1,2,3,4/
      DATA     C8C1/1,1,1,1,1,1,1,1,1,1/
      DATA     C8D1/100/
      DO 10 I=1,10
        C8A1 = C8D1
        C8C1(I) = C8B1(I) ** CCOS(C8A1)
   10 CONTINUE
C
      WRITE(6,*) ' C8C1 '
      WRITE(6,110) C8C1
  110 FORMAT (2('(',e15.6,',',e15.6,') '))
C
      STOP
      END
