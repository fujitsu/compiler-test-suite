      INTEGER*4 A(10),B(10),C(10)
      DATA A/10*1/
      DATA B/10*2/
      DATA C/10*3/
      DO 10 I=1,10
        A(I)=ISHFT(1,A(I))
        B(I)=ISHFT(1,B(I))
        C(I)=ISHFT(1,C(I))
   10 CONTINUE
      WRITE(6,*) 'A = ',A
      WRITE(6,*) 'B = ',B
      WRITE(6,*) 'C = ',C
      END
