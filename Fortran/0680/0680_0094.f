       PROGRAM MAIN
       INTEGER * 4 I4S    ,I4B(11)
       REAL    * 4 R4S    ,R4B(11)
       REAL    * 8 R8S    ,R8B(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4B(I) = I
       R4B(I) = I
       R8B(I) = I
 99   CONTINUE

       I4S = 2
       R4S = 2.
       R8S = 2.

      DO 1 I=1,N
        I4S = I4S * I4B(I)
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### SIMPLE ###',I4S

      DO 2 I=1,N
        R4S = R4S * R4B(I)
 2    CONTINUE

      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### SIMPLE ###',R4S

      DO 3 I=1,N
        R8S = R8S * R8B(I)
 3    CONTINUE

      WRITE(6,*) '### TEST 3 ###'
      WRITE(6,*) '### SIMPLE ###',R8S

      STOP
      END
