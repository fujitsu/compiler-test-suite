      PROGRAM MAIN
      INTEGER*8 A(100),B(100)
      INTEGER*4 C(100)
      DATA B/100*3/,C/100*5/
C
      DO 10 I=1,100
         IF(I.GT.10) THEN
            A(I) = ISHFT(B(I),C(I))
         ELSE
            A(I) = ISHFT(B(I),I)
         ENDIF
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
