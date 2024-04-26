      PROGRAM  MAIN
      COMPLEX*8 C8A1,C8B1,C8C1(10),C8D1(10)
      DATA     C8A1/1/
      DATA     C8B1/500/
      DATA     C8C1/10*0/
      DATA     C8D1/50,10,15,20,25,30,35,40,45,50/

      DO 10 I=1,10
        C8A1 = C8B1
        C8C1(I) = C8A1 / C8D1(I)
   10 CONTINUE
C
      WRITE(6,*) ' C8C1 '
      WRITE(6,110) C8C1
  110 FORMAT (2('(',e15.7,',',e15.7,') '))
C
      STOP
      END
