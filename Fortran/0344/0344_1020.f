      PROGRAM MAIN
      INTEGER*8 A(10),B(10),N
      INTEGER*4 C(10)
      DATA B/1,2,3,4,5,6,7,8,9,10/,A/10*0/,C/1,2,3,4,5,6,7,8,9,10/
C
      DO 10 I=1,10
         N = 0
         IF(MOD(I,2).EQ.0) THEN
            N = ISHFT(B(I),C(I))
         ENDIF
         A(I) = N
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10I7)
      STOP
      END
