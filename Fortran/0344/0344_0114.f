      DIMENSION A(10),B(10),C(10)
      DATA     A/10*0/
      DATA     B/90,30,150,180,90,30,150,90,30,90/
      DATA     C/10*0/
      DO 10 I=1,10
        C(I)=B(I)*1
        A(I)=SIN(C(I))
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4F10.1)
      STOP
      END
