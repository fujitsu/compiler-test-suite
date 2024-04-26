      PROGRAM MAIN
      INTEGER*8 A(100),N
      INTEGER*4 B(100)
      DATA B/100*3/
      DATA N/8/
C
      DO 10 I=1,100
         IF(MOD(I,3).EQ.0) THEN
            A(I) = ISHFT(N,B(I))
         ELSE
            A(I) = N
         ENDIF
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
