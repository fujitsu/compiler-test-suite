       PROGRAM MAIN
       INTEGER * 4 I4S    ,I4B(11),I4C(11),I4D(11)
       REAL    * 4 R4S    ,R4B(11),R4C(11),R4D(11)
       REAL    * 8 R8S    ,R8B(11),R8C(11),R8D(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4B(I) = I
       I4C(I) = I
       I4D(I) = I
       R4B(I) = I
       R4C(I) = I
       R4D(I) = I
       R8B(I) = I
       R8C(I) = I
       R8D(I) = I
 99   CONTINUE

      I4S = 2
      R4S = 2.
      R8S = 2.

      DO 1 I=1,N
        I4S = I4B(I)*I4C(I)+I4S
        I4D(I) = I4S
 1    CONTINUE
      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### SIMPLE ###',I4S,I4D

      DO 2 I=1,N
        R4S = R4B(I)*R4C(I)+R4S
        R4D(I) = R4S
 2    CONTINUE
      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### SIMPLE ###',R4S,R4D

      DO 3 I=1,N
        R8S = R8B(I)*R8C(I)+R8S
        R8D(I) = R8S
 3    CONTINUE
      WRITE(6,*) '### TEST 3 ###'
      WRITE(6,*) '### SIMPLE ###',R8S,R8D

      STOP
      END
