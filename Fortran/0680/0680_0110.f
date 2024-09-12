       PROGRAM MAIN
       INTEGER * 4 I4S    ,I4B(11),I4C(11)
       REAL    * 4 R4S    ,R4B(11),R4C(11)
       REAL    * 8 R8S    ,R8B(11),R8C(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4B(I) = I     +1
       I4C(I) = I
       R4B(I) = I     +1.
       R4C(I) = I
       R8B(I) = I     +1.
       R8C(I) = I
 99   CONTINUE

      I4S = 5
      R4S = 5.
      R8S = 5.

      DO 1 I=1,N
        I4S = I4B(I)+I4S
        I4C(I) = I4S
 1    CONTINUE
      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### SIMPLE ###',I4S,I4C

      DO 2 I=1,N
        R4S = R4B(I)+R4S
        R4C(I) = R4S
 2    CONTINUE
      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### SIMPLE ###',R4S,R4C

      DO 3 I=1,N
        R8S = R8B(I)+R8S
        R8C(I) = R8S
 3    CONTINUE
      WRITE(6,*) '### TEST 3 ###'
      WRITE(6,*) '### SIMPLE ###',R8S,R8C

      STOP
      END
