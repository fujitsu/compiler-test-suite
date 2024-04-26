      INTEGER A(10),B(10),C(10),XX
      DATA    A/10*4/,B/10*8/,C/10*12/,XX/0/
      DO 10 I=1,10
        A(I) = ISHFT(-B(I),-B(I))
   10 CONTINUE
      WRITE(6,*) '### CHK 1 ###'
      WRITE(6,*) A
C
      DO 20 I=1,10
        A(I) = ISHFT(-B(I),B(I))
   20 CONTINUE
      WRITE(6,*) '### CHK 2 ###'
      WRITE(6,*) A
C
      DO 30 I=1,10
        A(I) = ISHFT(B(I),-B(I))
   30 CONTINUE
      WRITE(6,*) '### CHK 3 ###'
      WRITE(6,*) A
C
      DO 40 I=1,10
        XX=XX+1
        A(I) = ISHFT(B(I),-C(XX))
   40 CONTINUE
      WRITE(6,*) '### CHK 4 ###'
      WRITE(6,*) A
      STOP
      END
